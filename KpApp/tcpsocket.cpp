#include "tcpsocket.h"
#include <string>
#include <iostream>
#include <sstream>

TcpSocket::TcpSocket(QObject *parent) : QObject(parent)
{

}
void TcpSocket::connectSocket(QString ipAdd , int port )
{
    socket = new QTcpSocket(this);

    connect(socket, SIGNAL(connected()),this, SLOT(connected()));
    connect(socket, SIGNAL(disconnected()),this, SLOT(disconnected()));
    connect(socket, SIGNAL(bytesWritten(qint64)),this, SLOT(bytesWritten(qint64)));
    connect(socket, SIGNAL(readyRead()),this, SLOT(readyRead()));

    socket->connectToHost(ipAdd,port);

    if(!socket->waitForConnected(1000))
        {
            qDebug() << "Not Connected!" << socket->errorString();
        }
}

void MyTcpSocket::connected()
{
    qDebug() << "connected...";
    socket->write("HEAD / HTTP/1.0\r\n\r\n\r\n\r\n");
}

void MyTcpSocket::disconnected()
{
    qDebug() << "disconnected...";
}

void TcpSocket::bytesWritten(qint64 bytes)
{
    qDebug() << "We wrote: " << bytes;
}

void TcpSocket::readyRead()
{
    qDebug() << "Reading...";
    qDebug() << socket->readAll();
}

void TcpSocket::sendRequest(QString request)
{
    QByteArray data = request.toUtf8();
    qDebug() << "send" << data;
    socket->write(data);
}
