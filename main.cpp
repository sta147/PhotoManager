#include <QApplication>
#include <QQmlApplicationEngine>

// other inlcudes...
#include <QDirIterator>
#include <QDir>
#include <QStringList>
#include <QDebug>
#include <QQuickView>
#include <QObject>
#include <QQuickItem>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
