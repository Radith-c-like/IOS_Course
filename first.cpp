#include <QWidget>
#include <QMainWindow>
#include <QApplication>
#include <QSlider>
#include <QPushButton>
#include <QVBoxLayout>

#include "setings.h"

#define SCREEN_WIDTH  600
#define SCREEN_HIGH  600

class CentralWidget : public QWidget {
public:
    CentralWidget(QWidget* parent)
    : QWidget(parent) {
        btn = new QPushButton("MOVE ME", this);
        btn -> setGeometry(20, 20, 50, 100);

        curValueX = 0;
        curValueY = 470;
        posY = new QSlider(Qt::Horizontal, this);
        posY -> setGeometry(15, SCREEN_HIGH-35, SCREEN_WIDTH, 50);
        posY -> setSingleStep(5);
        posY -> setRange(0,530);

        posX = new QSlider(Qt::Vertical, this);
        posX -> setGeometry(5, 0, 5, SCREEN_HIGH);
        posX -> setSingleStep(5);
        posX -> setRange(0,470);
        posX -> setValue(470);

        connect(posY, &QSlider::valueChanged, [this](int value){
            QPoint curPos = btn -> pos();
            btn -> move(curPos.x() + value - curValueX, curPos.y());
            curValueX = value;            
        });
        connect(posX, &QSlider::valueChanged, [this](int value){
            QPoint curPos = btn -> pos();
            btn -> move(curPos.x(), curPos.y() - value + curValueY);
            curValueY = value;            
        });
    }

    ~CentralWidget() = default;


private:
    int curValueX;
    int curValueY;
    QPushButton* btn;
    QSlider* posX;
    QSlider* posY;
};


class MainWindow : public QMainWindow {
public:
    MainWindow()
    : QMainWindow() {
        this -> setGeometry(300,300,600,600);
        centralWidget = new CentralWidget(this);
        setCentralWidget(centralWidget);
        resize(SCREEN_WIDTH,SCREEN_HIGH);
    }

    ~MainWindow() = default;

private:
    CentralWidget* centralWidget;  
};
