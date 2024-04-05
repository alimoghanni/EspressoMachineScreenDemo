import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

Window {
    width: 1200
    height: 400
    visible: true
    title: qsTr("Espresso Machine Screen")
    color: "#000000"

    Rectangle{
        id: shutdownButton
        width:100
        height: 100
        radius: width
        color: "#000000"
        border.color: "white"
        anchors {
            left: parent.left
            leftMargin: 100
            verticalCenter: parent.verticalCenter
        }
        Image {
            id: shutdownImage
            source: "qrc:/assets/images/shutdown.png"
            sourceSize: Qt.size(60, 60)
            anchors.centerIn: parent
        }

        MouseArea{
            id: shutdownMouseArea
            anchors.fill: parent
            onClicked:  Qt.quit()
        }
    }

    Rectangle{
        id: rigthButton
        width:100
        height: 100
        radius: width
        color: "#000000"
        border.color: "white"
        anchors {
            right: parent.right
            rightMargin: 100
            verticalCenter: parent.verticalCenter
        }
        Image {
            id: rigthImage
            source: "qrc:/assets/images/playpause.png"
            sourceSize: Qt.size(40, 40)
            anchors.centerIn: parent
        }
    }

    // Usage example
    GridLayout {
        anchors.centerIn: parent // Center the GridLayout within the Window
        columns: 7
        rowSpacing: 5 // Adjust row height
        columnSpacing: 5 // Adjust column width

        //        // First row
        //        Repeater {
        //            model: 7

        //            delegate: Button {
        //                text: "Button " + (index + 1)
        //                implicitWidth: 100 // Square width
        //                implicitHeight: 100 // Square height
        //            }
        //        }
        CustomButton {
            //text: "Button 1"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Espresso"
            iconSource: "qrc:/assets/images/espresso.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 2"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Coffee"
            iconSource: "qrc:/assets/images/coffee.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 3"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Americano"
            iconSource: "qrc:/assets/images/americano.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 4"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Capuccino"
            iconSource: "qrc:/assets/images/capuccino.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 5"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Latte Macchiato"
            iconSource: "qrc:/assets/images/lattemacchiato.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 6"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Cafe au Lait"
            iconSource: "qrc:/assets/images/cafeaulait.png"
            onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 7"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "More Drinks"
            iconSource: "qrc:/assets/images/moredrinks.png"
            onButtonClicked: displayScreen.statusText = text
        }

        // Second row
        CustomButton {
            Layout.row: 1 // Second row
            Layout.column: 0 // First column
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2 // Spanning two columns
            //text: "Button 8"
            implicitWidth: 200 // Square width
            implicitHeight: 100 // Square height
            //buttonText: "User"
            iconSource: "qrc:/assets/images/user.png"
            //onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            Layout.row: 1 // Second row
            Layout.column: 2 // Second column
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 3 // Spanning three columns
            Layout.rowSpan: 2 // Spanning two rows
            //text: "Big Spanning Button 11"
            implicitWidth: 300 // Square width
            implicitHeight: 200 // Square height
            //buttonText: "User"
            //iconSource: "qrc:/assets/images/user.png"
            //onButtonClicked: displayScreen.statusText = text

            DisplayScreen{
                id: displayScreen

                anchors.centerIn: parent

            }
        }

//        Repeater {
//            Layout.row: 1 // Second row
//            Layout.column: 5 // Sixth column
//            model: 2

//            delegate: Button {
//                text: "Button " + (index + 12)
//                implicitWidth: 100 // Square width
//                implicitHeight: 100 // Square height
//            }
//        }
        CustomButton {
            //text: "Button 12"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            //buttonText: "Up"
            iconSource: "qrc:/assets/images/up.png"
            //onButtonClicked: displayScreen.statusText = text
        }

        CustomButton {
            //text: "Button 13"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            //buttonText: "Back"
            iconSource: "qrc:/assets/images/back.png"
            onButtonClicked: displayScreen.statusText = "Ready to Order"
        }

//        // Third row
//        Repeater {
//            Layout.row: 2 // Third row
//            model: 2

//            delegate: Button {
//                text: "Button " + (index + 9)
//                implicitWidth: 100 // Square width
//                implicitHeight: 100 // Square height
//            }
//        }
        CustomButton {
            //text: "Button 9"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Clean"
            iconSource: "qrc:/assets/images/clean.png"
            //onButtonClicked: displayScreen.statusText = text
        }
        CustomButton {
            //text: "Button 10"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            buttonText: "Settings"
            iconSource: "qrc:/assets/images/settings.png"
            //onButtonClicked: displayScreen.statusText = text

            onButtonClicked: popupSettings.open()
        }

//        // Fourth row
//        Repeater {
//            Layout.row: 3 // Fourth row
//            model: 2

//            delegate: Button {
//                text: "Button " + (index + 14)
//                implicitWidth: 100 // Square width
//                implicitHeight: 100 // Square height
//            }
//        }
        CustomButton {
            //text: "Button 14"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            //buttonText: "Down"
            iconSource: "qrc:/assets/images/down.png"
            //onButtonClicked: displayScreen.statusText = text
        }
        CustomButton {
            //text: "Button 15"
            implicitWidth: 100 // Square width
            implicitHeight: 100 // Square height
            //buttonText: "Right"
            iconSource: "qrc:/assets/images/right.png"
            //onButtonClicked: displayScreen.statusText = text
        }
    }

    Popup {
           id: popupSettings
           //x: 100
           //y: 100
           width: 200
           height: 300
           modal: true
           focus: true
           anchors.centerIn: Overlay.overlay
           closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
           enter: Transition {
                   NumberAnimation { property: "opacity"; from: 0.0; to: 1.0 }
               }
           exit: Transition {
                   NumberAnimation { property: "opacity"; from: 1.0; to: 0.0 }
               }

           ColumnLayout {
                   anchors.fill: parent
                   CheckBox { text: qsTr("E-mail") }
                   CheckBox { text: qsTr("Calendar") }
                   CheckBox { text: qsTr("Contacts") }
               }
       }
}
