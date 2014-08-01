XPTemplate priority=personal+

" inclusion
XPTinclude
      \ _common/common

XPTemplateDef

XPT connect wrap=source " connect a signal to a slot
XSET param3=R('more1')
connect(`source^, SIGNAL(`signal_name^(`param1^`more1...^`, `param2?^`more1...^)), `this^, SLOT(`signal_name^{S(V(), '\^.', 'on\u&')}^(`param3^)));
`cursor^

" connect(`source^, SIGNAL(`signal_name^(`param1^`more1...^`, `param2?^`more1...^)), `this^, SLOT(`signal_name^{S(V(), '\^.', 'on\u&')}^(`param3^`more2...^, `param4^`more2...^)));

XPT QAction " create new QAction instance 
QAction(`icon^, `tr...{{^tr("`cursor^")`}}^, `this^);
`cursor^

XPT tr " create a tr string
tr("`^")`^

XPT #include " include a header 
#include <`QtGui^/`cursor^>

XPT test_file_skeleton "create a unit test file skeleton
#include "auto_test.h"

class `clsname^ : public QObject
{
    Q_OBJECT
private slots:
    void `test_method_name^();
};

DECLARE_TEST(`clsname^)

..XPT

XPT qlog " add info log 
XSET level=Choose(['INFO', 'WARN', 'ERROR', 'FATAL', 'DEBUG', 'TRACE'])
QLOG_`level^() << "`log^" `more...^<< `log2^ `more...^;
`cursor^
..XPT

XPT QVERIFY " qt unit test assertion 
QVERIFY(`real^ == `expected^);
`cursor^
..XPT

XPT qclass " create qt base class 
XSET classname|def=CamelCase(fileRoot())
class `classname^ : public `QObject^
{
    Q_OBJECT
public: 
    explicit `classname^(`QObject^ * parent=NULL);
    ~`classname^();

signals:

private slots: 

private:
  `cursor^
};

..XPT

" include shortcuts
XPT iobject 
#include <QtCore/QObject>`cursor^
..XPT 

XPT istring 
#include <QtCore/QString>`cursor^
..XPT 

XPT istringlist 
#include <QtCore/QStringList>`cursor^
..XPT 

XPT ilist 
#include <QtCore/QList>`cursor^
..XPT

XPT ihash
#include <QtCore/QHash>`cursor^
..XPT

XPT ilog 
#include "gui/reporter.h"`cursor^
..XPT

XPT idebug 
#include <qDebug>`cursor^
..XPT

XPT ibytearray 
#include <QtCore/QByteArray>`cursor^
..XPT

XPT ifile 
#include <QtCore/QFile>`cursor^
..XPT

XPT idir
#include <QtCore/QDir>`cursor^
..XPT

XPT iset
#include <QtCore/QSet>`cursor^
..XPT

XPT isettings
#include <QtCore/QSettings>`cursor^
..XPT

XPT idir
#include <QtCore/QDir>`cursor^
..XPT

XPT iglobal
#include "globals.h"`cursor^
..XPT

XPT icore
#include <QtCore/Q`String^>`cursor^
..XPT

XPT igui 
#include <QtGui/Q`Dialog^> `cursor^
..XPT

XPT iboxlayout 
#include <QtGui/QBoxLayout> `cursor^
..XPT

XPT idatetime 
#include <QtCore/QDateTime> `cursor^
..XPT

XPT sectionheader " section header
////////////////////////////////////////////////////////////////
// `cursor^
////////////////////////////////////////////////////////////////

..XPT

XPT sh alias=sectionheader

XPT qproperty " define property
XSET actionType=Choose(['READ', 'WRITE', 'NOTIFY', 'RESET'])
Q_PROPERTY( `type^ `name^ `READ^ `readFunc^ `more...^`actionType^ `funcName^ `more...^)

`type^ `readFunc^() const 
{ return m_`name^; }

`type^ m_`name^;
`cursor^
..XPT

XPT accessor " define property getter and setter 
`type^ `propName^() const
{ return m_`propName^; } 
void set`propName^(`type^ `propName^)
{ m_`propName^ = `propName^; }
`cursor^
..XPT

XPT qtmain 
#include <QtCore/QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    `cursor^
}

..XPT
