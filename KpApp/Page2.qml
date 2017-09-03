import QtQuick 2.4
import com.TcpSocket 1.0

Page2Form {
    TcpSocket{
        id:tcpSocket
    }
    sendButton.onClicked: {
       console.log("button click event")
       var request = reqtField.text.toString();
       tcpSocket.sendRequest(request + "\r\n\r\n")
    }
}
