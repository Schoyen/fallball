#include <QApplication>
#include <QQmlApplicationEngine>

#include <QtQml>
#include "bubble.h"
int main(int argc, char *argv[])
{
    qmlRegisterType<Bubble>("FallBall", 1, 0, "Bubble");

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
