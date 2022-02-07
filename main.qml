import QtQuick
import "demo"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    DemoRect {
        id: demoRect
    }
}
