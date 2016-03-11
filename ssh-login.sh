#!/bin/sh

echo  "Enter the server name:"  
read server
expect	/home/comein/tools/shell/ssh_auto_login  $server
