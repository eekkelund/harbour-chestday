import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.3


Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        PullDownMenu {
            MenuItem {
                text: qsTr("ABOUT THE SICKCUNT")
                onClicked: pageStack.push(Qt.resolvedUrl("about.qml"))
            }
                MenuItem {
                    text: qsTr("CHECK IT")
                    onClicked: py.call('chestday.chest', [], function(result) {
                        header.title = result[0]
                        label.text = result[1]
                        image.source = "images/" + result[2]
                    })
                }

        }
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                id: header
                title: qsTr("CHESTDAY?!")
            }

            Label {
                x: Theme.paddingLarge
                id: label
                color: Theme.primaryColor
                text: qsTr("PULL THAT MENU TO FIND OUT")

            }
            Image {
                id: image
                sourceSize.width: column.width
                anchors.horizontalCenter: parent.horizontalCenter
                source: ""


            }
        }


        Python {
            id: py
            Component.onCompleted: {

                addImportPath(Qt.resolvedUrl('.'));
                importModule('chestday', function() {

                })
            }
        }


    }
}
