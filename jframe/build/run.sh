#!/bin/bash
# description: start app | *Deprecated
# author: jackson rick
# version: 1.2

JARNAME=$1
PORT=$2
JPARAM=$3
JAVAPATH=/usr/local/jdk/bin
APPATH=/data/wwwroot

if [ ! -n "$JARNAME" ];then
    echo "Usage: $0 appname [port]"
    exit 1;
fi

#if [ ! -d "$JAVAPATH" ];then
#    echo "Java path doesn't exist"
#    exit 1;
#fi

APP_NAME="jframe-web-$JARNAME"

if [ ! -f "$APPATH/$JARNAME/$APP_NAME.jar" ];then
    echo "$APP_NAME jarfile doesn't exist"
    exit 1;
fi

PID=$(ps -ef | grep ${APP_NAME} | grep -v grep | awk '{print $2}' )
if [ -n "$PID" ];then
    echo -e "$APP_NAME has started already at PID:$PID.Will kill!"
    kill $PID
    sleep 3
fi

if [ -n "$PORT" ];then
    SP=$PORT
    PORT="--server.port=$PORT"
fi

echo Java path: $JAVAPATH
echo App Home: $APPATH
echo App Name: $APP_NAME
echo Server port: ${SP:-'Default'}

nohup $JAVAPATH/java -server $JPARAM -jar $APPATH/$JARNAME/$APP_NAME.jar $PORT --spring.profiles.active=pro >/dev/null 2>&1 &

echo starting...
sleep 5

PID=$(ps -ef | grep ${APP_NAME} | grep -v grep | awk '{print $2}' )
if [ -n "$PID" ];then
    echo -e "$APP_NAME is started at PID:$PID."
else
    echo -e "$APP_NAME start failed."
fi

# nohup java -server -jar -Dapp.name=jframe-web-manage jframe-web-manage.jar --spring.profiles.active=pro >run.log &

# -server                   use server [C2] mode.
# -Dapp.name                specify app name and use to logback's filename.
# --server.port             specify server port.
# --spring.profiles.active  specify dev or product profile.
# we can specify java properties: java -Xms4g -Xmx4g -Xmn768m

# cloud server: nohup java -jar cloud-server-1.0.jar -server >/dev/null 2>&1 &
# -Dcom.sun.management.jmxremote.port=18888 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=


