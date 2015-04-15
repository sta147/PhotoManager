import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1
import QtQuick.Window 2.1


Item {
    id: item1
    width: 640
    height: 480

    property alias button3: button3
    property alias button2: button2
    property alias button1: button1


        RowLayout {

            Button {
                id: button1
                text: qsTr("Press Me 1")
            }

            Button {
                id: button2
                text: qsTr("Press Me 2")
            }

            Button {
                id: button3
                text: qsTr("Press Me 3")
            }
        }

        Grid {
                x: 5; y: 5
                rows: 5; columns: 5; spacing: 10

                Repeater { model: 24
                           Rectangle { width: 70; height: 70
                                       color: "lightgreen"

                                       Text { text: index
                                              font.pointSize: 30
                                              anchors.centerIn: parent } }
                }
            }


    GridView {
        id: gridView1
        x: 20
        y: 67
        width: 221
        height: 393
        cellWidth: 70
        delegate: Item {
            x: 5
            height: 50
            Column {
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    x: 5
                    text: name
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                }
                spacing: 5
            }
        }
        cellHeight: 70
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        }

}
