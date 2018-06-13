#=============================================================================
#     FileName: start_blog_server.sh
#         Desc:  
#       Author: LiangZi
#        Email: eGlhb3lhb2tlNzYzMEBzaW5hLmNvbQo=
#     HomePage: https://aquarian-age.github.io/
#      Version: 0.0.1
#   LastChange: 2018-06-13 07:51:10
#      History:
#=============================================================================
#!/bin/bash

# set -v 

#判断mysql服务是否启动
STATUS=$(systemctl status mysql.service | grep Status | awk '{print $2$3$4$5$6}')

if [ "$STATUS" = "\"MariaDBserverisdown\"" ]
then
	
	echo "mysql服务没有启动，现在启动服务..."
	sudo systemctl start mysql.service

elif [ "$STATUS" = "\"TakingyourSQLrequestsnow...\"" ]
then
	echo "mysql服务已经启动..."
	systemctl status mysql.service
fi

# mysql -u root -p blog
php artisan serve &
