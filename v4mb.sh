wget -c https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/v4mb.tar.gz
tar -zxvf v4mb.tar.gz
rm -f v4mb.tar.gz
cp -r v4mb/panel config/
cp 20-jup /etc/cont-init.d/20-jup
cp jshare.sh /jd/jshare.sh
cp -r v4mb/panel panel
mv v4mb/config/diy.sh config/diy.sh
mv v4mb/config/auth.json config/auth.json
cp 20-jup config/20-jup
cp jshare.sh config/jshare.sh
rm -rf v4mb
cd panel
npm i
pm2 start server.js
echo -e "默认http端口号为5678，如果你做了映射，请使用实际映射的端口进行访问。
默认用户名admin，密码adminadmin。
