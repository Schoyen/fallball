#ifndef BUBBLE_H
#define BUBBLE_H

#include <QQuickItem>

class Bubble : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(int x READ x WRITE setX NOTIFY xChanged)
    Q_PROPERTY(int y READ y WRITE setY NOTIFY yChanged)

public:
    Bubble();

    int x() const;
    int y() const;

signals:
    void xChanged(int x);
    void yChanged(int y);

public slots:
    void setX(int x);
    void setY(int y);

private:
    int m_x;
    int m_y;
};

#endif // BUBBLE_H
