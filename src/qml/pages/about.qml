import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                id: header
                title: qsTr("ABOUT")
            }
            Item {
                anchors { left: parent.left; right: parent.right; }
                height: labelAbout.height

                Label {
                    id: labelAbout
                    width: parent.width
                    wrapMode: Text.Wrap
                    text: qsTr("Chestday is native application for SailfishOS to check whether it is chestday or not. FYI monday is international chestday. Powered by QML, Qt and Python.")
                }
            }
            SectionHeader {
                text: qsTr("VERSION")
            }
            Item {
                anchors { left: parent.left; right: parent.right; }
                height: labelVersion.height

                Label {
                    id: labelVersion
                    text: qsTr(APP_VERSION)
                }
            }
            SectionHeader {
                text: qsTr("DEVELOPED WHILE BENCHPRESSING")
            }

            Label {
                text: "Eetu Kahelin\n@eetz1/@eekkelund"
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        weed.visible = true
                    }
                }
            }

            AnimatedImage {
                id:weed
                fillMode: AnimatedImage.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
                source: "images/arnweed.gif"
                visible: false
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        weed.visible = false
                    }
                }
            }

            SectionHeader {
                text: qsTr("MOTHERFUCKING OPENSOURCE")
            }
            Label {
                text: qsTr("<a href='https://github.com/eekkelund/harbour-chestday'>GITHUB</a>")
                onLinkActivated: Qt.openUrlExternally(link)
            }
        }
    }
}
