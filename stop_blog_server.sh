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

# set -v 

killall php

# kill $(ps aux | grep php | head -n 1 | cut -b '10-16')
# kill $(ps aux | grep php | head -n 1 | cut -b '10-16')

ps aux | grep php

# kill $(ps aux | grep php | awk 'NR==1{print}' | awk '{print $2}')
# kill $(ps aux | grep php | awk 'NR==2{print}' | awk '{print $2}')

