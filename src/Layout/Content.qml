import QtQuick 2.0

Item {
    id: root
    property int menuWidth: 150
    Row {
     ContentMenu {
         id: contentMenu
         width: menuWidth
         height: root.height
     }
     ContentBody {
         id: contentBody
         width: root.width - menuWidth
         height: root.height
     }
    }

    // 音乐播放弹出页面
//    MusicDetail {
//        id: musicDetail
//    }
}
