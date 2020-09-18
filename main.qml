import QtQuick 2.4
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12

Window {

    width: 800
    height: 400
    visible: true
    title: qsTr("Celeria Updater 0.0.1")
    flags: Qt.FramelessWindowHint | Qt.Window | Qt.WA_TranslucentBackground

    BorderImage {
        id: borderImage
        x: 0
        y: 0
        width: 800
        height: 400
        source: "../../../Bureau/Celeria_Background/Background/Celeria_Background.png"

        ProgressBar {
            id: progressBar
            x: 0
            y: 394
            width: 800
            height: 6
            value: 0.0
            palette.dark: "#616E93"
            palette.midlight: "#619293"
        }

        Button {
            id: button
            x: 300
            y: 180
            width: 200
            height: 40
            text: qsTr("Lancer")
            font.pointSize: 18
            background: Rectangle{
                color: "#619293"
            }

            contentItem: Text {
                font: button.font
                opacity: enabled ? 1.0 : 0.3
                color: button.down ? "#616E93" : "#3F5DB3"
                text: "Lancer"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            Connections {
                target: button
                onClicked: _update.buttonClicked();
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.100000023841858}
}
##^##*/
