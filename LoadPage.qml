import QtQuick 2.15
import QtQuick.Controls 2.5

Item {
    //3
    width:600
    height:600

    Rectangle{
        id:background
        anchors.fill:parent
        color:"#d0ffa1"

        Rectangle {
            id: rectangle
            anchors.centerIn: parent
            width: 200
            height: 200
            color: "#ffffff"
            radius:99

            Image {
                id: image
                anchors.centerIn: parent
                width: 140
                height: 140
                source: "diet.png"
                fillMode: Image.PreserveAspectFit

            }
        }

        //4
        BusyIndicator {
            id: busyIndicator
            anchors{

                horizontalCenter: parent.horizontalCenter
                bottom:parent.bottom
                bottomMargin: 60
            }
        }
    }
}
