cp ./asterisk /etc/logrotate.d/
if [ $? -eq 0 ];then
	logrotate -f /etc/logrotate.conf	
	echo "Asterisk Logrotate configuration is installed and active"
else
	echo "Asterisk Logrotate install failed"

fi
