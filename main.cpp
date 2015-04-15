#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml/QQmlEngine>
#include <QtQuick/QQuickView>

// other inlcudes...
#include <QDirIterator>
#include <QDir>
#include <QStringList>
#include <QDebug>
#include <QQuickView>
#include <QObject>
#include <QQuickItem>
#include <application.h>
#include <QQmlContext>

int main(int argc, char *argv[])
{

    QApplication app(argc, argv);
    Iterator iter();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("iter", &iter);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
