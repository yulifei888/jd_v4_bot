#依次运行以下三条命令，安装jd_v4_bot和面板

1、wget -q https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/jd-docker.sh -O jd-docker.sh && chmod +x jd-docker.sh && ./jd-docker.sh
   
   #如果无法拉到V4镜像，请使用阿里源进行拉取。


2、docker exec -it jd_v4_bot bash 
   
   #默认容器名jd_v4_bot，如果做了修改按照实际写


3、wget -q https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/v4mb.sh -O v4mb.sh && chmod +x v4mb.sh && ./v4mb.sh
