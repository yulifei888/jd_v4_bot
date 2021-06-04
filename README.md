#依次运行以下三条命令，安装jd_v4_bot和面板

1、wget -q https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/jd-docker.sh -O jd-docker.sh && chmod +x jd-docker.sh && ./jd-docker.sh
   
   #如果无法拉到V4镜像，请移步百度云下载到服务器，然后docker load -r nevinee_jd_v4-bot_arm.tar（或nevinee_jd_v4-bot_amd64.tar）加载镜像
    百度云地址：https://pan.baidu.com/s/1Q4qFEodM47Ss6hGQ8bXJQA 提取码：4321 


2、docker exec -it jd_v4_bot bash 
   
   #默认容器名jd_v4_bot，如果做了修改按照实际写


3、wget -q https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/v4mb.sh -O v4mb.sh && chmod +x v4mb.sh && ./v4mb.sh
   
   #面板开机不会自启动，请在配置中配置EnableJupDiyShell="true" 可以随更新脚本一起启动
   #如需面板开机自启动，进入容器后 vi /etc/cont-init.d/20-jup 加一行 pm2 start /jd/panel/server.js
