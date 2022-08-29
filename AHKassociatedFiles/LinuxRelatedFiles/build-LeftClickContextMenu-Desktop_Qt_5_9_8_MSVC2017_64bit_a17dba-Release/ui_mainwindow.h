/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_3;
    QPushButton *AltTab_function;
    QPushButton *TestLocalFunction_function;
    QPushButton *TestMouseFunction_function;
    QFrame *line_2;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *Exit_context;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(511, 163);
        QFont font;
        font.setFamily(QStringLiteral("MS Shell Dlg 2"));
        MainWindow->setFont(font);
        MainWindow->setStyleSheet(QLatin1String("background-color: rgb(0, 0, 0);\n"
"border-color: rgb(0, 0, 0);"));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        verticalLayoutWidget = new QWidget(centralwidget);
        verticalLayoutWidget->setObjectName(QStringLiteral("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(0, 0, 511, 119));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setSpacing(3);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setSpacing(1);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        AltTab_function = new QPushButton(verticalLayoutWidget);
        AltTab_function->setObjectName(QStringLiteral("AltTab_function"));
        AltTab_function->setStyleSheet(QLatin1String("QPushButton {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(84, 84, 84);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"\n"
"}\n"
""));

        verticalLayout_3->addWidget(AltTab_function);

        TestLocalFunction_function = new QPushButton(verticalLayoutWidget);
        TestLocalFunction_function->setObjectName(QStringLiteral("TestLocalFunction_function"));
        TestLocalFunction_function->setStyleSheet(QLatin1String("QPushButton {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(84, 84, 84);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"\n"
"}\n"
""));

        verticalLayout_3->addWidget(TestLocalFunction_function);

        TestMouseFunction_function = new QPushButton(verticalLayoutWidget);
        TestMouseFunction_function->setObjectName(QStringLiteral("TestMouseFunction_function"));
        TestMouseFunction_function->setMinimumSize(QSize(186, 0));
        TestMouseFunction_function->setStyleSheet(QLatin1String("QPushButton {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(84, 84, 84);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    min-width: 10em;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"\n"
"}\n"
""));

        verticalLayout_3->addWidget(TestMouseFunction_function);


        horizontalLayout->addLayout(verticalLayout_3);


        verticalLayout->addLayout(horizontalLayout);

        line_2 = new QFrame(verticalLayoutWidget);
        line_2->setObjectName(QStringLiteral("line_2"));
        line_2->setStyleSheet(QLatin1String("margin-left: 10px;\n"
"margin-right: 10px;\n"
"background-color: rgb(255, 255, 255);"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line_2);

        horizontalLayoutWidget = new QWidget(centralwidget);
        horizontalLayoutWidget->setObjectName(QStringLiteral("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(0, 120, 511, 41));
        horizontalLayout_2 = new QHBoxLayout(horizontalLayoutWidget);
        horizontalLayout_2->setSpacing(7);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);
        Exit_context = new QPushButton(horizontalLayoutWidget);
        Exit_context->setObjectName(QStringLiteral("Exit_context"));
        Exit_context->setStyleSheet(QLatin1String("QPushButton {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(84, 84, 84);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    font: 14px;\n"
"    padding: 6px;\n"
"\n"
"}\n"
"\n"
"QPushButton:focus {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
"    font: bold 14px;\n"
"    padding: 6px;\n"
"}\n"
"\n"
"\n"
"QPushButton::focus:hover {\n"
"	color: rgb(255, 255, 255);\n"
"	background-color: rgb(162, 162, 162);\n"
"    border-style: outset;\n"
"    border-width: 2px;\n"
"    border-radius: 10px;\n"
"    border-color: beige;\n"
""
                        "    font: bold 14px;\n"
"    padding: 6px;\n"
"}"));
        Exit_context->setFlat(false);

        horizontalLayout_2->addWidget(Exit_context);

        MainWindow->setCentralWidget(centralwidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", Q_NULLPTR));
        AltTab_function->setText(QApplication::translate("MainWindow", "AltTab", Q_NULLPTR));
        TestLocalFunction_function->setText(QApplication::translate("MainWindow", "TestLocalFunctions", Q_NULLPTR));
        TestMouseFunction_function->setText(QApplication::translate("MainWindow", "TestMouseFunction", Q_NULLPTR));
        Exit_context->setText(QApplication::translate("MainWindow", "esc", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
