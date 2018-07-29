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
cd ~/work/blog

# 判断mysql服务是否启动
STATUS=$(systemctl status mysql.service | grep Active | awk '{print $3}')

if [ "$STATUS" = "(dead)" ]
then
	
	echo "mysql服务没有启动，现在启动服务..."
	echo "输入当前用户的密码..."
	sleep 1
	sudo systemctl start mysql.service

elif [ "$STATUS" = "(running)" ]
then

	echo "显示mysql服务状态..."
	
fi
sleep 1

systemctl status mysql.service
echo "mysql服务已启动...准备启动博客服务..."

# mysql -u root -p blog
# nohup php artisan serve &
php artisan serve &

if [ "$(ps aux | grep php | head -n 1 | cut -b "78-90")" = "serve" ]
then
	echo "php服务启动成功..."
else
	echo "php服务启动失败..."
fi
