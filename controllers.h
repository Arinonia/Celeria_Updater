#ifndef CONTROLLERS_H
#define CONTROLLERS_H

#include <QDebug>
#include <QObject>

class Controllers  : public QObject
{
    Q_OBJECT

public:
    explicit Controllers(QObject *parent = 0);
public slots:
    void buttonClicked();
};

#endif // CONTROLLERS_H
