#=============================================================================
#     FileName: start_blog_server.sh
#         Desc:  停止程序
#       Author: LiangZi
#        Email: eGlhb3lhb2tlNzYzMEBzaW5hLmNvbQo=
#     HomePage: https://aquarian-age.github.io/
#      Version: 0.0.1
#   LastChange: 2018-06-13 07:51:10
#      History:
#=============================================================================
#!/bin/bash

killall php

ps aux | grep php
echo "博客服務已經停止..."
