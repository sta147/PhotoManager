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
    Q_INVOKABLE void iterateDir(QDir, QString);

    //deconstructor
    ~Iterator(){ }
};

#endif // APPLICATION

