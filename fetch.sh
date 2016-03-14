#!/bin/sh
appPath = "/var/lib/tomcat7/webapps/comein"
if [ ! -d "$appPath" ]; then 
	git clone git@greseed.vicp.net:/srv/git/comein.git
fi
cd comein
git pull master origin