import QtQuick
import "src/Layout"

Window {
    width: 640
    height: 480
    visible: true
    title: "简版网易云"
    minimumWidth: 640
    minimumHeight: 480
    Base {
        id: baseLayout
        width: parent.width
        height: parent.height
    }
}
