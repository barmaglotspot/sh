#!/bin/bash
#ставим ajenti
#add-apt-repository ppa:ondrej/php
add-apt-repository ppa:webupd8team/java
a2enmod rewrite
service apache2 restart
echo ':: Installing ajenti'
#wget -O- https://raw.github.com/ajenti/ajenti/1.x/scripts/install-ubuntu.sh | sudo sh
#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo ':: Installing repo key'
wget http://repo.ajenti.org/debian/key -O- | apt-key add -

echo ':: Adding repo entry'
echo "deb http://repo.ajenti.org/debian main main ubuntu" > /etc/apt/sources.list.d/ajenti.list

echo ':: Updating lists'
apt-get update

echo ':: Installing package'
apt-get install -y ajenti

echo ':: Done! Open https://<address>:8000 in browser'
#-----ajenti-end- install
echo ':: Installing phpmyadmin'
#config.inc.php
#apt-get install php7.0-cli libapache2-mod-php7.0 php7.0-mcrypt php-pear php-db php7.0-gd
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
cp /media/Yandex/info.php /var/www/html
cp /media/Yandex/info.php /var/www
apt-get install oracle-java8-installer
#wget http://downloads.sourceforge.net/project/daloradius/daloradius/daloradius0.9-9/daloradius-0.9-9.tar.gz
#tar xvfz /media/Yandex/daloradius-0.9-9.tar.gz
#mv daloradius-0.9-9 /var/www/daloradius
#файл /etc/apache2/sites-available/000-default.conf
#измените строку DocumentRoot /var/www/html на DocumentRoot /var/www
#Стандартные логин и пароль к daloradius:
#Логин — Administrator
#Пароль — radius




