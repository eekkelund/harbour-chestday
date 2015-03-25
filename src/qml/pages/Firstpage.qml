import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.3


Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        //Go to next page when pulldownmenu clicked
        PullDownMenu {
            MenuItem {
                text: qsTr("ABOUT THE SICKCUNT")
                onClicked: pageStack.push(Qt.resolvedUrl("about.qml"))
            }
            MenuItem {
                text: qsTr("TO GET CHEST PUMPED")
                onClicked: pageStack.push(Qt.resolvedUrl("chestday.qml"))
            }
        }
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("CHESTDAY?!")
            }
            Label {
                x: Theme.paddingLarge
                text: qsTr("PULL DAT MENU")
                color: Theme.primaryColor
                font.pixelSize: Theme.fontSizeExtraLarge


            }
        }
    }
}
