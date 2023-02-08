import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    height: docuView.implicitHeight
    width: docuView.implicitWidth

    Rectangle {
        id: docuView
        implicitHeight: 200
        implicitWidth: 200
        height: root.height
        width: root.width
        color: "dark gray"
        border {
            width: 1
            color: "black"
        }
        Rectangle {
            id: label
            height: 20
            width: parent.width
            anchors.top: parent.top
            anchors.left: parent.left
            color: "gray"
            border {
                width: 1
                color: "black"
            }
            RowLayout {
                anchors.fill: parent
                anchors.margins: 2
                Text {
                    text: "Open Documents"
                    verticalAlignment: Text.AlignVCenter
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                }

                Rectangle {
                    color: "red"
                    Layout.alignment: Qt.AlignRight
                    height: parent.height
                    width: parent.height
                }
            }
        }

        ListView {
            id: view
            spacing: 3
            width: root.width
            anchors.bottom: parent.bottom
            anchors.top: label.bottom
            anchors.margins: 3
            model: 50
            clip: true
            ScrollBar.vertical: ScrollBar {}
            delegate: Rectangle {
                color: "navy"
                radius: 3
                height: 20
                width: view.width
            }
        }
    }
}
