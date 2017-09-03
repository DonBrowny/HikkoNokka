#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "tcpsocket.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<TcpSocket>("com.TcpSocket",1,0,"TcpSocket");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
