cd /opt/
wget 
unzip https://transfer.sh/AONec/final.zip
mv javaeejars/* /usr/lib/jvm/java-8-oracle/jre/lib/ext/
rm ~/.bashrc
mv bashrc ~/.bashrc
chmod 777 ~/.bashrc
chmod +x setup_tomcat.sh
./setup_tomcat.sh
rm -r javaeejars final.zip setup_tomcat.sh
