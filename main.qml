import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import FallBall 1.0

ApplicationWindow {
    title: qsTr("Sliding ball")
    id: mainWindow
    width: 640
    height: 480
    visible: true

    Bubble {
        id: bubble
        x: mainWindow.width / 2
        y: mainWindow.height / 2
    }

    /*
    Rectangle {
        anchors.fill: parent

        Image {
            id: bubble
            source: "red_bub.svg"
            smooth: true
            property real centerX: mainWindow.width / 2
            property real centerY: mainWindow.height / 2
            property real bubbleCenter: bubble.width / 2
            x: centerX - bubbleCenter
            y: centerY - bubbleCenter

            Behavior on x {
                SmoothedAnimation {
                    easing.type: Easing.Linear
                    duration: 100
                }
            }

            Behavior on y {
                SmoothedAnimation {
                    easing.type: Easing.Linear
                    duration: 100
                }
            }
        }

        MouseArea {
            id: mousePointer
            anchors.fill: parent
            hoverEnabled: true


            onClicked: {
                var newX = mousePointer.mouseX
                var newY = mousePointer.mouseY


                if (newX < bubble.width)
                    newX = bubble.width

                if (newX > mainWindow.width - bubble.width)
                    newX = mainWindow.width - bubble.width

                if (newY < bubble.height)
                    newY  = bubble.height

                if (newY > mainWindow.height - bubble.height)
                    newY = mainWindow.height - bubble.height


                bubble.x = newX - bubble.width / 2
                bubble.y = newY - bubble.height / 2

                if (bubble.source == "qrc:/red_bub.svg")
                    bubble.source = "blue_bub.svg"
                else if (bubble.source == "qrc:/blue_bub.svg")
                    bubble.source = "green_bub.svg"
                else if (bubble.source == "qrc:/green_bub.svg")
                    bubble.source = "red_bub.svg"
            }
        }
    }
    */
}
