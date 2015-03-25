import Sailfish.Silica 1.0
import io.thp.pyotherside 1.3
import QtQuick 2.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                id: header
                title: qsTr("")
            }

            Label {
                x: Theme.paddingLarge
                id: label
                color: Theme.primaryColor
                text: qsTr("")

            }
            Image {
                id: image
                sourceSize.width: column.width
                anchors.horizontalCenter: parent.horizontalCenter
                //sourceSize.height: scale
                source: ""


            }
        }


        Python {
            id: py
            Component.onCompleted: {

                addImportPath(Qt.resolvedUrl('.'));
                importModule('chestday', function() {
                    py.call('chestday.chest', [], function(result) {
                        header.title = result[0]
                        label.text = result[1]
                        image.source = "images/" + result[2]
                    })
                })
            }
        }


    }
}
