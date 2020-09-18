#include "controllers.h"
#include <QObject>
#include <QtNetwork>

Controllers::Controllers(QObject *parent) : QObject (parent){

}
void Controllers::buttonClicked( ){
       //PUTAIN JE VAIS REUSSIR A GERER LA BAR
    QNetworkAccessManager networkManager;
    QUrl url("http://arinonia.chaun14.fr/celeria/instance.json");
    QNetworkRequest networkRequest(url);
    networkManager.get(networkRequest);
    QObject::connect(&networkManager, &QNetworkAccessManager::finished, [&](QNetworkReply* reply){
       if (reply->error() != QNetworkReply::NoError){
           qDebug() << "Error";
       }else {
           qDebug() << " mais print un truc stpppppppppppppppppp";
           QJsonObject jsonObject= QJsonDocument::fromJson(reply->readAll()).object();
           QString fullName= jsonObject["maintenance"].toString();
           qDebug() << fullName << "qzdqzdqzdqzd";
       }
       qDebug() << "je te viole";
    });

    /*QTextStream in(&inputFile);

    while (!in.atEnd())
    {
       QString line = in.readLine();

    }
    inputFile.close();*/
}
