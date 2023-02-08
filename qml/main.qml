import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/custom/components/"

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Layout.minimumHeight: layout.minimumHeight

    header: ToolBar {
        height: 20
        Text {
            anchors.centerIn: parent
            text: "window height: " + root.height + " - width: " + root.width
        }
    }

    GridLayout {
        id: layout
        anchors.fill: parent
        rows: 2
        columns: 3
        SideBar {
            id: sidebar
            Layout.fillHeight: true
            //Layout.alignment: Qt.AlignTop
            Layout.row: 0
            Layout.column: 0
            Layout.rowSpan: 2
        }

        NavigationPanel {
            id: navPanel
            Layout.row: 0
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 200
            Layout.maximumWidth: 200
            Layout.minimumWidth: 140
            Layout.minimumHeight: 200
            Layout.preferredHeight: 300
        }

        DocumentViewer {
            id: viewDocuments
            Layout.row: 1
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 140
            Layout.minimumHeight: 60
            Layout.preferredHeight: 200
            Layout.preferredWidth: 200
            Layout.maximumHeight: 200
            Layout.maximumWidth: 200
        }

        CodeEditor {
            id: editor
            Layout.row: 0
            Layout.column: 2
            Layout.rowSpan: 2

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.minimumWidth: 300
            Layout.minimumHeight: 260


        }
    }

    /*footer: ToolBar {
        height: 20
        anchors.left: sidebar.right
    }*/
}
