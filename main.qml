import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {//1
    visible: true
    minimumWidth: 600
    minimumHeight: 600

    maximumHeight: 700
    maximumWidth: 700
    title: qsTr("BMI Calculator")

    //2
    StackView{
        id:contentFrame
        width:600
        height:600

        initialItem: Qt.resolvedUrl("qrc:/LoadPage.qml")
    }

    //5
    Component.onCompleted: {//if this component is completed loading then its going to replace the initial page with another one
        contentFrame.replace("qrc:/MainPage.qml")
    }
}
