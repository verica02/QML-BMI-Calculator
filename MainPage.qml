import QtQuick 2.15
import QtQuick.Controls 2.5

//6
Item {
    width:600
    height:600

    Rectangle {
        id: background
        visible: true
        anchors.fill:parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        color: "#d0ffa1"

        Label {
            id: titleLabel
            x: 171
            y: 8
            text: qsTr("Calculator BMI")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 30
        }

        //8
        SwipeView {
            id: swipeView
            x: 7
            y: 68
            width: 584
            height: 524
            visible: true

            currentIndex: 0

            Item {
                id: genderPage
                width: 584
                height: 524

                Image {
                    id: image
                    x: 167
                    y: 0
                    width: 250
                    height: 500
                    source: "Assets/female-icon.png"
                    clip: false
                    fillMode: Image.PreserveAspectCrop
                }
                //9
                RadioButton {
                    id: maleRadioButton
                    x: 423
                    y: 8
                    width: 47
                    height: 44
                    font.pointSize: 10
                    icon.width: 0
                    display: AbstractButton.IconOnly
                    clip: false
                    //16
                    onClicked:{
                        nextRoundButton.enabled = true
                        //22
                        image.source = "qrc:/Assets/male-icon.png"
                        image1.source = "qrc:/Assets/male-icon.png"
                        image2.source = "qrc:/Assets/male-icon.png"
                        image3.source = "qrc:/Assets/male-icon.png"
                    }

                    Label {
                        id: label1
                        x: 60
                        y: 11
                        width: 46
                        height: 22
                        text: qsTr("Male")
                        font.pointSize: 12
                    }
                }

                //9
                RadioButton {
                    id: femaleRadioButton
                    x: 114
                    y: 8
                    width: 47
                    height: 44
                    clip: false
                    icon.width: 0
                    display: AbstractButton.IconOnly
                    font.pointSize: 10

                    //16
                    onClicked:{
                        nextRoundButton.enabled = true
                        //22
                        image.source = "qrc:/Assets/female-icon.png"
                        image1.source = "qrc:/Assets/female-icon.png"
                        image2.source = "qrc:/Assets/female-icon.png"
                        image3.source = "qrc:/Assets/female-icon.png"
                    }

                }

                Label {
                    id: label
                    x: 37
                    y: 19
                    text: qsTr("Female")
                    font.pointSize: 12
                }

                RoundButton {
                    id: nextRoundButton
                    x: 423
                    y: 468
                    width: 120
                    visible: true
                    text: "Next ->"
                    //15
                    enabled: false
                    font.pointSize: 12

                    //17
                    onClicked:{
                        swipeView.setCurrentIndex(1)
                    }
                }
            }

            //10
            Item {
                id: heightPage
                width: 584
                height: 524

                Image {
                    id: image1
                    x: 167
                    y: 0
                    width: 250
                    height: 500
                    source: "Assets/female-icon.png"
                    fillMode: Image.PreserveAspectCrop
                }

                SpinBox {
                    id: spinBoxHeight
                    x: 423
                    y: 113
                    width: 140
                    height: 42

                }

                Label {
                    id: label2
                    x: 423
                    y: 49
                    text: qsTr("Height")
                    font.pointSize: 12
                }

                Label {
                    id: label3
                    x: 423
                    y: 77
                    text: qsTr("100cm +")
                    font.pointSize: 12
                }

                RoundButton {
                    id: nextButton
                    x: 423
                    y: 468
                    width: 120
                    visible: true
                    text: "Next ->"
                    font.pointSize: 12

                    //17
                    onClicked:{
                        swipeView.setCurrentIndex(2)
                    }
                }

                RoundButton {
                    id: nextButton1
                    x: 41
                    y: 468
                    width: 120
                    text: "<- Back"
                    font.pointSize: 12

                    //18
                    onClicked:{
                        swipeView.setCurrentIndex(0)
                    }
                }

                Label {
                    id: heightValueLabel
                    x: 8
                    y: 59
                    width: 113
                    height: 58
                    //20
                    text: spinBoxHeight.value + 100
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 30
                }

                Label {
                    id: titleLabel2
                    x: 23
                    y: 105
                    width: 113
                    height: 58
                    text: qsTr("Your height")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 15
                }
            }

            //11
            Item {
                id: waitPage
                width: 584
                height: 524

                RoundButton {
                    id: nextButton2
                    x: 423
                    y: 468
                    width: 120
                    visible: true
                    text: "Next ->"
                    flat: false
                    z: 0
                    font.pointSize: 12
                    //17
                    onClicked:{
                        swipeView.setCurrentIndex(3)
                    }
                }

                RoundButton {
                    id: nextButton3
                    x: 41
                    y: 468
                    width: 120
                    text: "<- Back"
                    font.pointSize: 12

                    //18
                    onClicked:{
                        swipeView.setCurrentIndex(1)
                    }
                }

                Label {
                    id: label4
                    x: 441
                    y: 61
                    text: qsTr("Weight")
                    font.pointSize: 20
                }

                Image {
                    id: image2
                    x: 167
                    y: 0
                    width: 250
                    height: 500
                    source: "Assets/female-icon.png"
                    fillMode: Image.PreserveAspectCrop
                }

                SpinBox {
                    id: spinBox
                    x: 432
                    y: 111
                    width: 121
                    height: 38
                    value: 45

                }

                Label {
                    id: weightValueLabel1
                    x: 8
                    y: 59
                    width: 113
                    height: 58
                    //20
                    text: spinBox.value
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 30
                }

                Label {
                    id: titleLabel3
                    x: 23
                    y: 105
                    width: 113
                    height: 58
                    text: qsTr("Your weight")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 15
                }
            }

            //12
            Item {
                id: bmiPage
                width: 584
                height: 524

                Image {
                    id: image3
                    x: 167
                    y: 0
                    width: 250
                    height: 500
                    source: "Assets/female-icon.png"
                    fillMode: Image.PreserveAspectCrop
                }

                Label {
                    id: titleLabel1
                    x: 423
                    y: 8
                    width: 89
                    height: 54
                    //21
                    text: (spinBox.value / (((spinBoxHeight.value + 100) / 100) * ((spinBoxHeight.value + 100) / 100))).toFixed(2)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 18
                }

                Label {
                    id: titleLabel4
                    x: 414
                    y: 57
                    text: qsTr("Your BMI")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 20
                }

                ProgressBar {
                    id: progressBar
                    x: 8
                    y: 42
                    height: 20
                    value: titleLabel1.text / 100

                }

                RoundButton {
                    id: roundButton1
                    x: 426
                    y: 119
                    width: 112
                    height: 35
                    text: "New Calculation"

                    //19
                    onClicked:{
                        swipeView.setCurrentIndex(0)
                        //23
                        image.source = "qrc:/Assets/female-icon.png"
                        image1.source = "qrc:/Assets/female-icon.png"
                        image2.source = "qrc:/Assets/female-icon.png"
                        image3.source = "qrc:/Assets/female-icon.png"

                        spinBoxHeight.value = 0
                        spinBox.value = 45

                        femaleRadioButton.checked = false
                        maleRadioButton.checked = false
                        nextRoundButton.enabled = false

                    }
                }

                RoundButton {
                    id: nextButton4
                    x: 41
                    y: 468
                    width: 120
                    text: "<- Back"
                    font.pointSize: 12

                    //18
                    onClicked:{
                        swipeView.setCurrentIndex(2)
                    }
                }

                Label {
                    id: label5
                    x: 8
                    y: 76
                    width: 200
                    height: 33
                    text: {
                        if(titleLabel1.text < 18.5)
                        qsTr("Underweight")
                        else if((titleLabel1.text >=  18.5) && (titleLabel1.text <= 25))
                        qsTr("Normal")
                        else if((titleLabel1.text >=  25) && (titleLabel1.text < 30))
                        qsTr("Overweight")
                        else if((titleLabel1.text >=  30) && (titleLabel1.text < 35))
                        qsTr("Obese")
                        else if((titleLabel1.text >=  35) && (titleLabel1.text < 40))
                        qsTr("Severely Obese")
                        else if(titleLabel1.text > 45)
                        qsTr("Morbidly Obese")
                    }

                    font.pointSize: 15
                }
            }
        }
        //13
        PageIndicator {
            id: pageIndicator
            x: 282
            y: 568
            width: 46
            height: 15
            count: 4

            //14
            currentIndex: swipeView.currentIndex
        }


    }


}
