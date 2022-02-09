import QtQuick
import "../Comm/Theme.mjs" as Theme

Rectangle {
    border.width: 1
    border.color: Theme.red
    Text {
        id: label
        text: "顶部"
        anchors.centerIn: parent
    }
}
