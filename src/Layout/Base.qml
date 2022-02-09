import QtQuick

Column {
    id: root
    property int headerHeight: 50
    property int footerHeight: 50
    Header {
        id: header
        height: headerHeight
        width: root.width
    }

    Content {
        id: content
        width: root.width
        height: root.height - headerHeight - footerHeight
    }

    Footer {
        id: footer
        height: footerHeight
        width: root.width
    }
}
