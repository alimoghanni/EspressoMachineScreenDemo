import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    property string statusText: "Blue profile"

    id: displayScreenRect

    width: 250
    height: 200
    color: "#000000"
    radius: 10

    Rectangle {
        id: statusTitle

        width: 250
        height: 50
        radius:10

        color: "#FD7014"

        anchors.top: parent.top

        Text {
            id: statusTxt
            color: "white"
            text: statusText
            anchors.centerIn: parent
            font.pixelSize: 24
        }
    }


    Slider {
        id: sliderOne
        orientation: Qt.Vertical
        from: 1
        value: 50
        to: 100

        anchors.top: sliderTwo.top
        //anchors.topMargin: 5
        anchors.bottom: sliderTwo.bottom
        //anchors.bottomMargin: 5
        anchors.right: sliderTwo.left
        anchors.rightMargin: 35
    }

    Image {
        id: imageOne
        source: "qrc:/assets/images/coffee-beans.png"
        width: 25
        height: 25

        anchors.bottomMargin: 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: sliderOne.horizontalCenter
    }

    Slider {
        id: sliderTwo
        orientation: Qt.Vertical
        from: 1
        value: 50
        to: 100

        anchors.top: statusTitle.bottom
        anchors.topMargin: 10
        anchors.bottom: imageTwo.top
        anchors.bottomMargin: 5
        //anchors.left: sliderOne.right
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Image {
        id: imageTwo
        source: "qrc:/assets/images/espresso.png"
        width: 25
        height: 25

        //anchors.top: sliderTwo.bottom
        anchors.bottomMargin: 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: sliderTwo.horizontalCenter
    }

    Slider {
        id: sliderThree
        orientation: Qt.Vertical
        from: 1
        value: 50
        to: 100

        anchors.top: sliderTwo.top
        //anchors.topMargin: 5
        anchors.bottom: sliderTwo.bottom
        //anchors.bottomMargin: 5
        anchors.left: sliderTwo.right
        anchors.leftMargin: 35
    }

    Image {
        id: imageThree
        source: "qrc:/assets/images/capuccino.png"
        width: 25
        height: 25

        anchors.top: sliderThree.bottom
        anchors.bottomMargin: 5
        anchors.horizontalCenter: sliderThree.horizontalCenter
    }



}
