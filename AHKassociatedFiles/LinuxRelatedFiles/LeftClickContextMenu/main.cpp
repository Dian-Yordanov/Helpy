#include "mainwindow.h"
#include <QApplication>
#include <QDesktopWidget>
//#include <QMessageBox>
//#include <QScreen>
#include <QMessageBox>

#include <string>
#include <sstream>

template <typename T>
std::string NumberToString(T pNumber)
{
 std::ostringstream oOStrStream;
 oOStrStream << pNumber;
 return oOStrStream.str();
}

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setWindowFlags(Qt::Window | Qt::FramelessWindowHint);

    QDesktopWidget widget;
    QRect screenGeometry = widget.screenGeometry();





    QPoint globalCursorPos = QCursor::pos();
    int mouseScreen = qApp->desktop()->screenNumber(globalCursorPos);

    QRect mouseScreenGeometry = qApp->desktop()->screen(mouseScreen)->geometry();
    QPoint localCursorPos = globalCursorPos - mouseScreenGeometry.topLeft();

//    printf(localCursorPos.x());

//    QMessageBox msgBox;
//    msgBox.setText(QString::number(localCursorPos.x()));
//    msgBox.exec();

//    QMessageBox(localCursorPos.x());






//    QScreen *screen0 = QApplication::screens().at(0);
//    QScreen *screen1 = QApplication::screens().at(1);

//    printf("screen0 %s \n", screen0->name().toStdString().c_str());
//    printf("screen1 %s \n", screen1->name().toStdString().c_str());

//    // Position on first screen.
//    QPoint pos0 = QCursor::pos(screen0);

//    // Position on second screen.
//    QPoint pos1 = QCursor::pos(screen1);

//    printf("pos 0: %d, %d \n", pos0.x(), pos0.y());
//    printf("pos 1: %d, %d \n", pos1.x(), pos1.y());

//    // Get position without screen.
//    QPoint pos = QCursor::pos();
//    printf("pos: %d, %d \n", pos.x(), pos.y());





    int height = screenGeometry.height();
    int width = screenGeometry.width();
    int x=(width - w.width()) / 2.0;
    int y=(height - w.height()) / 2.0;
    w.setGeometry(localCursorPos.x(),localCursorPos.y(),w.width(),w.height());
    w.show();

//    w.show();
    return a.exec();
}

