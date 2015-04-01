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

    //adding a comment.
    QDir mDir;

    foreach(QFileInfo mItm, mDir.drives())
    {
        //qDebug() << mItm.absoluteFilePath();
        QDirIterator it(mItm.absoluteFilePath(), QStringList() << "*.jpg", QDir::Files, QDirIterator::Subdirectories);
        mItm.filePath();

                while (it.hasNext()) {
                    qDebug() << "Directory: " << it.next();
                }
        //printf(mItm.absoluteFilePath());
    }


    return app.exec();
}
