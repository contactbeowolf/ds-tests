cd /opt/
wget https://doselect-packages.s3-ap-southeast-1.amazonaws.com/simplilearn_codelabs_assets.zip
unzip simplilearn_codelabs_assets.zip
mv javaeejars/* /usr/lib/jvm/java-8-oracle/jre/lib/ext/
rm ~/.bashrc
mv bashrc ~/.bashrc
chmod 777 ~/.bashrc
chmod +x setup_tomcat.sh
./setup_tomcat.sh
rm -r javaeejars simplilearn_codelabs_assets.zip setup_tomcat.sh
cd /opt/ds/scripts/
chmod +x *
