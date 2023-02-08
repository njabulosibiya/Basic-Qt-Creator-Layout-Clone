import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    width: button.implicitWidth
    height: button.implicitHeight

    property alias text: label.text
    //property alias icon: icon.source

    /*Button {
        id: button
        implicitHeight: 80
        implicitWidth: 90

        contentItem: Text {
            id: text
            text: "text"
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
        }

        Rectangle {
            id: icon
            width: 50
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            y: 10
            //anchors.horizontalCenter: parent.horizontalCenter
            color: "red"
        }*/

    Button {
        id: button
        implicitHeight: icon.implicitHeight + label.implicitHeight //80
        implicitWidth: 90
        width: root.width
        height: root.height

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 5

            Rectangle {
                id: icon
                color: "red"
                radius: 3

                implicitHeight: 50
                implicitWidth: 50

                Layout.fillHeight: true
                Layout.fillWidth: true

                Layout.maximumHeight: implicitHeight
                Layout.maximumWidth: implicitWidth

                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: label
                text: "text"
                color: "black"

                Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter

                Layout.fillHeight: false
                Layout.fillWidth: false
            }
        }
    }

}
