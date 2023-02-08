import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: root
    height: editor.implicitHeight
    width: editor.implicitWidth

    Rectangle {
        id: editor
        implicitHeight: 589
        implicitWidth: 1150
        height: parent.height
        width: parent.width
        color: "dark gray"
        border {
            width: 1
            color: "black"
        }
        Rectangle {
            id: label
            height: 20
            width: root.width
            color: "gray"
            border {
                width: 1
                color: "black"
            }
            RowLayout {
                anchors.fill: parent
                Rectangle {
                    id: backButton
                    //Layout.alignment: Qt.AlignLeft
                    height: label.height
                    width: label.height
                    color:"red"
                }
                Rectangle {
                    id: forwardButton
                    height: label.height
                    width: label.height
                    color:"blue"
                }
                Rectangle {
                    id: lockButton
                    height: label.height
                    width: label.height
                    color:"yellow"
                }
                Rectangle {
                    id: fileTypeButton
                    height: label.height
                    width: label.height
                    color:"white"
                }
                Text {
                    id: fileOpened
                    text: "CodeEditor.qml"
                    font {
                        family: "poppins"
                        pixelSize: 10
                    }
                    Layout.minimumWidth: 90
                    Layout.preferredWidth: 150
                    Layout.fillWidth: true
                    verticalAlignment: Text.AlignVCenter
                }
                Rectangle {
                    id: closeButton
                    height: label.height
                    width: label.height
                    color:"red"
                }

                Text {
                    id: currentElement
                    text: "height"
                    font {
                        family: "poppins"
                        pixelSize: 10
                    }
                    Layout.minimumWidth: 180
                    Layout.fillWidth: true
                    verticalAlignment: Text.AlignVCenter
                }
                Text {
                    id: fileTextFormat
                    text: "Windows (CRLF)"
                    font {
                        family: "poppins"
                        pixelSize: 10
                    }
                    //implicitWidth: 40
                    verticalAlignment: Text.AlignVCenter
                }
                Text {
                    id: cursorPosition
                    text: "Line: 96, Col: 43"
                    font {
                        family: "poppins"
                        pixelSize: 10
                    }
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        Rectangle {
            id: lineCount
            width: 50
            anchors.top: label.bottom
            anchors.bottom: parent.bottom
            color: "gray"
            Column {
                spacing: 1
                anchors.horizontalCenter: lineCount.horizontalCenter
                Repeater {
                    model: 200
                    delegate: Text {
                        text: index
                        horizontalAlignment: Text.AlignHCenter
                        color: "white"
                        font {
                            pixelSize: 16
                            family: "calibri"
                        }
                    }
                }
                clip: true
            }
        }
    }
}
