import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Rectangle {
    property string buttonText: " "
    property string iconSource: "qrc:/assets/images/americano.png"
    signal buttonClicked(string text)

    width: 120
    height: 40
    color: "#414141"
    radius: 10

    Image {
        id: icon
        source: iconSource
        width: 50
        height: 50
        anchors.centerIn: parent
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: buttonTxt
        anchors.top: icon.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        text: buttonText
        font.bold: true
        font.pixelSize: 12
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            parent.color = "#525252"
        }
        onExited: {
            parent.color = "#414141"
        }

        onClicked: {
            console.log(buttonText + " Button clicked!")
            buttonClicked(buttonText)
        }
    }
}
