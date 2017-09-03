import QtQuick 2.7
import com.TcpSocket 1.0

Page1Form {

    TcpSocket{
        id:tcpSocket
    }
    button.onClicked: {
         console.log("button click event")
        var ipAddress = ipTextField.text.toString();
        var portNumber = portTextField.text.toString();
        console.log(ipAddress+": as Ip :"+portNumber);
        tcpSocket.connectSocket(ipAddress, parseInt(portNumber));
    }
}
