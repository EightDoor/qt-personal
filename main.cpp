#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // 设置默认主题
    QQuickStyle::setStyle("Material");

    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/qt_personal_project/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
