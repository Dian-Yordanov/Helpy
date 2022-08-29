#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QKeyEvent>
#include <QMetaEnum>
#include <stdio.h>

#if defined(Q_WS_WIN) || defined(Q_OS_WIN)
// Windows...
#define WINVER 0x0500
#include "Windows.h"
#include "WinUser.h"
#include <direct.h>
#define GetCurrentDir _getcwd
#elif defined(Q_WS_X11) || defined(Q_OS_LINUX)
// Linux...
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/extensions/XTest.h>
#include <unistd.h>
#define GetCurrentDir getcwd
#endif

//typedef int (*ahkdll)(std::string) ;
//typedef int (*ahkdll)(std::string, const wchar_t *, const wchar_t *) ;
typedef int (*ahkdll)(const wchar_t *, const wchar_t *, const wchar_t *) ;
//typedef int (*ahkdll)(wchar_t *, wchar_t *, wchar_t *) ;
typedef int (*ahkReady)();

#include<iostream>
using namespace std;

namespace SO {
enum KeyNameOption { KeyNameNone = 0, AppendArrow = 1 };
Q_DECLARE_FLAGS(KeyNameOptions, KeyNameOption)
}
QString keyName(int index, SO::KeyNameOptions opt = {}) {
    static auto getEnum = [](const char *name) {
      int enumIndex = qt_getQtMetaObject()->indexOfEnumerator(name);
      return qt_getQtMetaObject()->enumerator(enumIndex);
   };
   static const auto keyEnum = getEnum("Key");
   static const auto modifierEnum = getEnum("KeyboardModifiers");

   auto name = modifierEnum.valueToKeys(index & Qt::KeyboardModifierMask);
   index &= ~Qt::KeyboardModifierMask;

   if (name == "NoModifier")
      name.clear();
   else {
      name.replace('|', '+');
      name.replace("Modifier", "");
      name.append('+');
   }

   auto keyName = keyEnum.valueToKey(index);
   if (keyName)
      name.append(keyName + 4);
   if ((opt & SO::AppendArrow) && index >= Qt::Key_Left && index <= Qt::Key_Down)
      name.append(" Arrow");
   return QLatin1String(name);
}

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

//void MainWindow::on_TestMouseFunction_function_clicked()
//{

//    QCursor c = cursor();
//    c.setPos(mapToGlobal(QPoint(width() / 2, height() / 2)));
//    setCursor(c);



//}

void MainWindow::on_AltTab_function_clicked()
{
AltTabFunction();

}



//void MainWindow::on_Exit_function_clicked()
//{
//    QApplication::exit();
//}

//void MainWindow::on_TestLocalFunction_function_clicked()
//{

////        QKeyEvent *event1 = new QKeyEvent ( QEvent::KeyPress, Qt::Key_Tab, Qt::NoModifier);
////        QKeyEvent *event2 = new QKeyEvent ( QEvent::KeyPress, Qt::Key_Tab, Qt::NoModifier);
////        QCoreApplication::sendEvent(this, event1);
////        QCoreApplication::sendEvent(this, event2);

////        QKeyEvent *event = new QKeyEvent ( QEvent::KeyRelease, Qt::Key_F4, Qt::AltModifier);
////        QApplication::postEvent (this, event);

////        QKeyEvent *event1 = new QKeyEvent(QEvent::KeyPress, Qt::Key_Down, Qt::NoModifier);
////        QKeyEvent *event2 = new QKeyEvent(QEvent::KeyRelease, Qt::Key_Down, Qt::NoModifier);
////        QCoreApplication::postEvent(this, event1);
////        QCoreApplication::postEvent(this, event2);

////        QKeyEvent *pressEvent = new QKeyEvent(QEvent::KeyPress, Qt::Key_Down, Qt::NoModifier, QKeySequence(Qt::Key_Down).toString());
////        QKeyEvent *releaseEvent = new QKeyEvent(QEvent::KeyRelease, Qt::Key_Down, Qt::NoModifier);
////        QCoreApplication::postEvent(this, pressEvent);
////        QCoreApplication::postEvent(this, releaseEvent);
//}

//void MainWindow::on_AltTab_context_clicked(){
//AltTabFunction();
//}

//void MainWindow::on_TestMouseFunction_context_clicked(){
//on_TestMouseFunction_contextFunction();
//}

//void MainWindow::on_TestLocalFunction_context_clicked(){
//on_TestLocalFunction_contextFunction();
//}

void MainWindow::on_Exit_context_clicked(){
QApplication::exit();
}

void MainWindow::AltTabFunction(){
#if defined(Q_WS_WIN) || defined(Q_OS_WIN)
// Windows...
    INPUT ip;
    INPUT ip2;

    // Pause for 5 seconds.


    // Set up a generic keyboard event.
    ip.type = INPUT_KEYBOARD;
    ip.ki.wScan = 0; // hardware scan code for key
    ip.ki.time = 0;
    ip.ki.dwExtraInfo = 0;

//     // Set up a generic keyboard event.
    ip2.type = INPUT_KEYBOARD;
    ip2.ki.wScan = 0; // hardware scan code for key
    ip2.ki.time = 0;
    ip2.ki.dwExtraInfo = 0;

    ip.ki.wVk = VK_MENU; // virtual-key code for the "a" key
    ip2.ki.wVk = VK_TAB; // virtual-key code for the "a" key

//    ip.ki.dwFlags = 0; // 0 for key press
//    SendInput(1, &ip, sizeof(INPUT));

//    ip2.ki.dwFlags = 0; // 0 for key press
//    SendInput(1, &ip2, sizeof(INPUT));

//    ip2.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
//    SendInput(1, &ip2, sizeof(INPUT));

//    ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
//    SendInput(1, &ip, sizeof(INPUT));
#elif defined(Q_WS_X11) || defined(Q_OS_LINUX)
// Linux...


    Display *d;
    d = XOpenDisplay(NULL);
        if(d == NULL)
        {
            //fprintf(stderr, "Errore nell'apertura del Display !!!\n");
            //exit(0);
        }
    system("xdotool keydown alt key Tab xdotool keyup alt");
    XFlush(d);
    XCloseDisplay(d);

#endif
}

//void MainWindow::on_TestMouseFunction_contextFunction(){

//#if defined(Q_WS_WIN) || defined(Q_OS_WIN)
//    MessageBoxA( NULL, "Hello, World!", "Hi!", MB_OK );
//#elif defined(Q_WS_X11) || defined(Q_OS_LINUX)

//#endif

//}

std::string workingdir()
{
    #if defined(Q_WS_WIN) || defined(Q_OS_WIN)

        char buf[256];
        GetCurrentDirectoryA(256, buf);
        return std::string(buf) + '\\';

    #elif defined(Q_WS_X11) || defined(Q_OS_LINUX)
    #endif

}

//int MainWindow::on_TestLocalFunction_contextFunction(){


//#if defined(Q_WS_WIN) || defined(Q_OS_WIN)

//    string currentDir = workingdir();
//    char currentDirDllCharArray[] = "AHKintegration\\x64w_MT\\AutoHotkey.dll";
//    string currentDirDll = currentDir + currentDirDllCharArray;
//    cout << currentDirDll;

////    MessageBoxA( NULL, currentDirDll.c_str(), "Hi!", MB_OK );



////   // Load DLL file
//   HINSTANCE hinstLib = LoadLibraryA(currentDirDll.c_str());
//   if (hinstLib == NULL)
//   {
//      printf("ERROR: unable to load DLL\n");
//      return 1;
//   }
//   // Get function pointer
//   ahkdll ahkdll_ = (ahkdll)GetProcAddress(hinstLib, "ahkdll");
//   ahkReady ahkReady_ = (ahkReady)GetProcAddress(hinstLib, "ahkReady");
//   if (ahkdll_ == NULL || ahkReady_ == NULL)
//   {
//      MessageBoxA( NULL, "ERROR: unable to find DLL function\n", "Hi!", MB_OK );
//      printf("ERROR: unable to find DLL function\n");
//      FreeLibrary(hinstLib);
//      return 1;
//   }

//    char currentDirAhkCharArray[] = "AHKintegration\\testmessage.ahk";
//    string currentDirAhk =  currentDir + currentDirAhkCharArray;
//    string your_result = currentDirAhk;

//    string narrow_string(your_result);
//    wstring wide_string = wstring(narrow_string.begin(), narrow_string.end());
//    const wchar_t* result = wide_string.c_str();

//    ahkdll_(result, L"", L"");

//   // Wait for script to finish
//   while (ahkReady_())
//       Sleep(50);
//   // Unload DLL file
//   FreeLibrary(hinstLib);

//    #elif defined(Q_WS_X11) || defined(Q_OS_LINUX)
//    #endif

//   return 0;

//}

