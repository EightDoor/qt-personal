import QtQuick
import "../Comm/Theme.mjs" as Theme

Rectangle {
    id: root
    border.width: 1
    border.color: Theme.red
    property int menuWidth: 0
    Row {
        Rectangle {
            width: root.menuWidth
            height: root.height
            border.width: 1
            border.color: Theme.green()
        }
    }
}
