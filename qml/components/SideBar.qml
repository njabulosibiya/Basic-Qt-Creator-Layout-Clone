import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/custom/controls/"

Item {
    height: background.implicitHeight
    width: background.implicitWidth

    Rectangle {
        id: background
        color: "grey"
        anchors.fill: parent
        implicitHeight: 800
        implicitWidth: 90
        width: parent.width
        height: parent.height

        ColumnLayout {
            anchors.fill: parent
            spacing: 20

            Column {
                Layout.alignment: Qt.AlignTop
                Layout.fillHeight: true
                Layout.maximumHeight: 480
                Layout.minimumHeight: 100

                SideBarButton {
                    text: "Welcome"
                }

                SideBarButton {
                    text: "Edit"
                }

                SideBarButton {
                    text: "Debug"
                }

                SideBarButton {
                    text: "Projects"
                }

                SideBarButton {
                    text: "Help"
                }

                SideBarButton {
                    text: "Design"
                }
            }

            Column {
                Layout.alignment: Qt.AlignBottom

                Layout.fillHeight: false
                Layout.fillWidth: false
                Rectangle {
                    id: theLine
                    color: "black"
                    width: parent.width
                    height: 1
                }

                SideBarButton {
                    text: "debug"
                }


                SideBarButton {
                    text: " "
                }
            }

        }
    }

}
