wget -c https://raw.githubusercontent.com/Anylines/jd_v4_bot/main/v4mb.tar.gz
tar -zxvf v4mb.tar.gz
rm -f v4mb.tar.gz
cp -r v4mb config/
cp -r v4mb/panel panel
cp v4mb/20-jup /etc/cont-init.d/20-jup
cp v4mb/25-server /etc/cont-init.d/25-server
cp v4mb/jshare.sh /jd/jshare.sh
cp -r v4mb/config /jd
rm -rf v4mb
ln -s /jd/config/v4mb/25-server /etc/cont-init.d/25-server
source /jd/config/diy.sh
echo -e "稍后请在浏览器访问 http://<ip>:5678，如果你做了映射，请使用实际映射的端口进行访问。
默认用户名admin，密码adminadmin。"
