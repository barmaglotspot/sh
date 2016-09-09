#ставим ajenti
a2enmod rewrite
service apache2 restart
echo ':: Installing ajenti'
wget -O- https://raw.github.com/ajenti/ajenti/1.x/scripts/install-ubuntu.sh | sudo sh
echo ':: Installing phpmyadmin'
#config.inc.php
#apt-get install php7-cli libapache2-mod-php7 php7-mcrypt php-pear php-db php7-gd
apt-get install phpmyadmin
#php7enmod mcrypt
echo ':: Installing plexmediaserver'
wget http://shell.ninthgate.se/packages/debian/pool/main/p/plexmediaserver/plexmediaserver_1.1.3.2700-6f64a8d_i386.deb
#wget http://shell.ninthgate.se/packages/debian/pool/main/p/plexmediaserver/plexmediaserver_1.1.3.2700-6f64a8d_amd64.deb
dpkg -i plexmediaserver_1.1.3.2700-6f64a8d_i386.deb
#dpkg -i plexmediaserver_1.1.3.2700-6f64a8d_amd64.deb
echo ':: Installing yandex disk ubuntu server'
apt-get install davfs2
mkdir /media/Yandex
echo "https://webdav.yandex.ru:443 barmaglot-server admin79787913618" >> /etc/davfs2/secrets
echo "https://webdav.yandex.ru:443 /media/Yandex davfs user,rw,_netdev 0 0" >> /etc/fstab
adduser barmaglot davfs2
mount /media/Yandex

#wget http://downloads.sourceforge.net/project/daloradius/daloradius/daloradius0.9-9/daloradius-0.9-9.tar.gz
#tar xvfz daloradius-0.9-9.tar.gz
#mv daloradius-0.9-9 /var/www/daloradius
#файл /etc/apache2/sites-available/000-default.conf
#измените строку DocumentRoot /var/www/html на DocumentRoot /var/www
#Стандартные логин и пароль к daloradius:
#Логин — Administrator
#Пароль — radius




