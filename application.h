//=================================
// include guard
#ifndef APPLICATION
#define APPLICATION

#include <QDirIterator>
#include <QStringList>
#include <QDir>
#include <QDebug>
#include <QString>
#include <QObject>


QT_BEGIN_NAMESPACE
class QAction;
class QMenu;
class QPlainTextEdit;
class QDir;
QT_END_NAMESPACE


class Iterator: public QObject {
    Q_OBJECT
public:
    //contructor
    Iterator();
    //explicit Iterator (QObject* parent = 0) : QObject(parent) {}

    Q_INVOKABLE void iterateDir(){
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
    }

    //deconstructor
    ~Iterator(){ }
};

#endif // APPLICATION

