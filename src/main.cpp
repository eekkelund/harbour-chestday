#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include <QScopedPointer>
#include <QQuickView>
#include <QQmlEngine>
#include <QGuiApplication>
#include <QQmlContext>



int main(int argc, char *argv[])
{
    // For this example, wizard-generates single line code would be good enough,
    // but very soon it won't be enough for you anyway, so use this more detailed example from start
    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    QScopedPointer<QQuickView> view(SailfishApp::createView());

//    Here's how you will add QML components whenever you start using them
//    Check https://github.com/amarchen/Wikipedia for a more full example
//    view->engine()->addImportPath(SailfishApp::pathTo("qml/components").toString());

//  views app version
    app->setApplicationVersion(APP_VERSION);
    view->rootContext()->setContextProperty("APP_VERSION", APP_VERSION);

    view->setSource(SailfishApp::pathTo("qml/main.qml"));

    view->show();

    return app->exec();
}
