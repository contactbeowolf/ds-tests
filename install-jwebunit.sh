wget -O - https://github.com/contactbeowolf/ds-tests/raw/master/simplilearn-release.sh | bash && source ~/.bashrc
cd /opt/
mkdir jwebunit
cd jwebunit
wget https://github.com/contactbeowolf/ds-tests/raw/master/jwebunit-3.2-release.zip
unzip jwebunit-3.2-release.zip 
mv *.jar /usr/lib/jvm/java-8-oracle/jre/lib/ext/
cd lib
mv *.jar /usr/lib/jvm/java-8-oracle/jre/lib/ext/
cd /opt/
rm -r jwebunit
cd /tomcat/conf/
rm tomcat-users.xml
wget https://raw.githubusercontent.com/contactbeowolf/ds-tests/master/tomcat-users.xml
