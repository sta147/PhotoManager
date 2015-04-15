import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    minimumWidth: 420
    minimumHeight:450
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    /**
    MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
    */
    toolBar:  ToolBar {
        RowLayout
        {
            ToolButton {
                iconSource: "qrc:/Folder01-Blue.png"
                tooltip: "Import/Scan"
                onClicked: iter.iterateDir
            }
            ToolButton {
                iconSource: "qrc:/button-2.png"
            }
            Slider {
                id: imageViewScale
                minimumValue:1
                maximumValue: 8
                tickmarksEnabled: true
                stepSize: 1

            }
        }
    }
    SplitView {
        anchors.fill:  parent
        Image {
            id: picture
            Layout.minimumWidth: 200
            Layout.maximumWidth: 500
            fillMode: Image.PreserveAspectFit
        }
        Item {
            Layout.minimumWidth: 200
            TabView {
                anchors.fill: parent
                anchors.margins: 12
                Tab {
                    title : "Table"
                    TableView{

                    }
                }
                Tab {
                    title : "Histogram"
                }
            }
        }
    }
}
