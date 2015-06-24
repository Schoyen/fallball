#include "bubble.h"

Bubble::Bubble()
{

}

int Bubble::x() const
{
    return m_x;
}

int Bubble::y() const
{
    return m_y;
}

void Bubble::setX(int x)
{
    if (m_x == x)
        return;

    m_x = x;
    emit xChanged(x);
}

void Bubble::setY(int y)
{
    if (m_y == y)
        return;

    m_y = y;
    emit yChanged(y);
}

