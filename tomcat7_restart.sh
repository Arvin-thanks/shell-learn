#!/bin/sh

#设置tomcat关闭和开启命令的路径
StartTomcat=/home/comein/container/apache-tomcat-7.0.68/bin/startup.sh
EndTomcat=/home/comein/container/apache-tomcat-7.0.68/bin/shutdown.sh

#关闭tomcat
$EndTomcat
while true; do
	#获取tomcat运行进程id
	TomcatID=$(ps -ef |grep tomcat |grep -w 'apache-tomcat-7.0.68'|grep -v 'grep'|awk '{print $2}')
	if [ $TomcatID ]; then
		#杀死tomcat进程并且等待5秒并查看是否操作成功
		kill  -9  $TomcatID
		sleep 5
	else
		break
	fi
done;

$StartTomcat