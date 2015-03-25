import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    AnimatedImage {
        id: animated
        source: "zyzz.gif"
        width: parent.width
        playing: false
    }

    Label {
        id: label
        anchors.top: animated.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Is today THE day?!")

    }

    function pause() {
        if(animated.playing){
            animated.playing = false;
            pauseplay.iconSource = "image://theme/icon-cover-play";
        }
        else
        {
            animated.playing = true;
            pauseplay.iconSource = "image://theme/icon-cover-pause";
        }
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-play"
            id:pauseplay
            onTriggered: {
                pause()
            }
        }
    }
}
