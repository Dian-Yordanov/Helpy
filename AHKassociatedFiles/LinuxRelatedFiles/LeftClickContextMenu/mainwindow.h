#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_AltTab_function_clicked();

    // void on_TestMouseFunction_function_clicked();

    // void on_TestLocalFunction_function_clicked();

    // void on_Exit_function_clicked();

    // void on_AltTab_context_clicked();

    // void on_TestMouseFunction_context_clicked();

    // void on_TestLocalFunction_context_clicked();

    void on_Exit_context_clicked();

    void AltTabFunction();

    // void on_TestMouseFunction_contextFunction();

    // int on_TestLocalFunction_contextFunction();

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
