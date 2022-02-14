import QtQuick
import "../Comm"

Rectangle {
    id: root
    border.width: 1
    border.color: customStyle.red
    property int menuWidth: 0
    CustomStyle {
     id: customStyle
    }
    Row {
        Rectangle {
            width: root.menuWidth
            height: root.height
            border.width: 1
            border.color: customStyle.green
            Row {
                anchors.centerIn: parent
                spacing: 20
                Rectangle {
                    width: 50
                    height: 50
                    radius: 100
                    border.color: customStyle.green
                    Text {
                        id: label
                        text: "测试"
                    }
                }
                Text {
                    id: labelName
                    text: "第十人1"
                }
            }
        }
    }
}
