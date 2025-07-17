import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: qsTr("Exemplo QML")

    property string mensagem: "Olá, mundo!"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            id: texto
            text: mensagem
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            text: "Clique aqui"
            onClicked: mensagem = "Você clicou!"
        }
    }
}
