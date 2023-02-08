import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    height: navPan.implicitHeight
    width: navPan.implicitWidth

    Rectangle {
        id:navPan
        implicitHeight: 589
        implicitWidth: 200
        width: parent.width
        height:parent.height
        color: "dark gray"
        ListView {
            id: items
            anchors.margins: 5
            clip: true
            anchors.fill: parent
            spacing: 5
            header: Rectangle {
                color: "gray"
                width: items.width
                height: 20
                z: 2
                border {
                    width: 1
                    color: "black"
                }

                Text {
                    text: "Projects"
                    verticalAlignment: Text.AlignVCenter
                    anchors.left: parent.left
                    font {
                        family: "poppins"
                        pixelSize: 10
                        letterSpacing: 0.33
                    }
                    color: "white"
                }

            }
            model: 100
            delegate: Rectangle {
                color: "blue"
                height: 20
                width: items.width
                radius: 3
            }
            headerPositioning: ListView.OverlayHeader
            ScrollIndicator.vertical: ScrollIndicator {}
        }
    }
}
