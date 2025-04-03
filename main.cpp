#include <QWidget>
#include <QMainWindow>
#include <QApplication>
#include <QSlider>
#include <QPushButton>
#include <QVBoxLayout>
#include <QMouseEvent>

#include <iostream>

#include "second.cpp"
//#include "first.cpp"

#define SCREEN_WIGHT  300
#define SCREEN_HIGH 300



class MainWindow : public QMainWindow {
public:
    MainWindow()
    : QMainWindow() {
       this -> setGeometry(100, 100, 300, 300); 
        centralWidget = new CentralWidget(this);
        this -> setCentralWidget(centralWidget);
    }


private:
    CentralWidget* centralWidget;

};


int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    MainWindow wnd = MainWindow();
    wnd.show();

    return app.exec();
}