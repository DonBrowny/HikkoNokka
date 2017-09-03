import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias ipTextField: ipTextField
    property alias portTextField: portTextField
    property alias button: button
    Rectangle {
        id: mainWindow
        color: "#ffffff"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        ColumnLayout {
            x: 262
            y: 76
            width: 260
            height: 226
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: label
                text: qsTr("Ip Address")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 36
                Layout.preferredWidth: 32
            }

            TextField {
                id: ipTextField
                text: qsTr("")
                Layout.fillWidth: true
            }

            Label {
                id: label1
                text: qsTr("Port Number")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 36
                Layout.preferredWidth: 32
            }

            TextField {
                id: portTextField
                text: qsTr("")
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
            }

            Button {
                id: button
                text: qsTr("Button")
                Layout.fillWidth: true
            }
        }
    }
}
