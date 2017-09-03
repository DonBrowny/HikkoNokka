import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Item {
    property alias textArea: textArea
    property alias reqtField: reqtField
    property alias sendButton: sendButton

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        ColumnLayout {
            x: 113
            y: 49
            height: 300
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            TextField {
                id: reqtField
                text: qsTr("")
            }

            Button {
                id: sendButton
                text: qsTr("Send")
                Layout.fillWidth: true
            }

            TextArea {
                id: textArea
                text: "Response  From Server"
                font.weight: Font.ExtraBold
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: 210
                Layout.preferredWidth: 200
                verticalAlignment: Text.AlignTop
                clip: false
                horizontalAlignment: Text.AlignLeft
                font.pointSize: 7
                font.family: "Verdana"
                textFormat: Text.AutoText
            }
        }
    }
}
