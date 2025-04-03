#include <QWidget>
#include <QMainWindow>
#include <QApplication>
#include <QSlider>
#include <QPushButton>
#include <QVBoxLayout>
#include <QMouseEvent>

#include "setings.h"

class CentralWidget : public QWidget {
    public:
        CentralWidget(QWidget *parent) 
        : QWidget(parent) {
            QPoint widgetPos = this->mapToGlobal(QPoint(SCREEN_WIGHT/2,SCREEN_HIGH/2));
            setMouseTracking(true);
            QCursor::setPos(widgetPos.x(), widgetPos.y());
    
            btn = new QPushButton("Catch me", this);
            btn -> setGeometry(SCREEN_WIGHT/2 - 20, SCREEN_HIGH/2 - 10, 50,20);
        }
    
        protected:
        void mouseMoveEvent(QMouseEvent *event) override {
            QPoint mousePos = event->pos();
            QPoint btnPos = btn->pos();
            QRect btnRect = btn->geometry();
            
            const int triggerDistance = 60;
            
            
            if (QRect(btnRect.x() - triggerDistance, 
                      btnRect.y() - triggerDistance,
                      btnRect.width() + 2*triggerDistance,
                      btnRect.height() + 2*triggerDistance).contains(mousePos)) {
                
                
                int dx = 0, dy = 0;
                if (mousePos.x() < btnPos.x()) dx = 10;
                else if (mousePos.x() > btnPos.x() + btnRect.width()) dx = -10;
                
                if (mousePos.y() < btnPos.y()) dy = 10;
                else if (mousePos.y() > btnPos.y() + btnRect.height()) dy = -10;
    
            
                int newX = btnPos.x() + dx;
                int newY = btnPos.y() + dy;
    
                newX = qBound(0, newX, width() - btnRect.width());
                newY = qBound(0, newY, height() - btnRect.height());
                
                btn->move(newX, newY);
            }
        }
    
    
    private:
        int PosX;
        int PosY;
        QPushButton* btn;
    
    };