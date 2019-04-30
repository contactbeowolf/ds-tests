#name: Installing and configuring tomcat 9 to port 8000 and add adding a default user with #username and password "tomcat"

rm /opt/tomcat/
mkdir /opt/tomcat/
cd /opt/tomcat/
wget https://github.com/contactbeowolf/ds-tests/raw/master/apache-tomcat-9.0.19.tar.gz
tar xvzf apache-tomcat-9.0.19.tar.gz

#If  apt-get install default-jdk

export J2SDKDIR=/usr/lib/jvm/java-8-oracle
export J2REDIR=/usr/lib/jvm/java-8-oracle/jre
export PATH=$PATH:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export DERBY_HOME=/usr/lib/jvm/java-8-oracle/db
export CATALINA_HOME=/opt/tomcat/apache-tomcat-9.0.19

echo "J2SDKDIR=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
echo "export PATH=$PATH:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin" >> ~/.bashrc
echo "J2REDIR=/usr/lib/jvm/java-8-oracle/jre" >> ./bashrc
echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
echo "DERBY_HOME=/usr/lib/jvm/java-8-oracle/db" >> ~/.bashrc
echo "CATALINA_HOME=/opt/tomcat/apache-tomcat-9.0.19" >> ~/.bashrc

cd /opt/tomcat/apache-tomcat-9.0.19/webapps/host-manager/META-INF/
rm context.xml
wget https://raw.githubusercontent.com/contactbeowolf/ds-tests/master/context.xml

cd /opt/tomcat/apache-tomcat-9.0.19/webapps/manager/META-INF/
rm context.xml
cp /opt/tomcat/apache-tomcat-9.0.19/webapps/host-manager/META-INF/context.xml /opt/tomcat/apache-tomcat-9.0.19/webapps/manager/META-INF/

cd /opt/tomcat/apache-tomcat-9.0.19/conf/
rm tomcat-users.xml
wget https://raw.githubusercontent.com/contactbeowolf/ds-tests/master/tomcat-users.xml

cd /opt/tomcat/apache-tomcat-9.0.19/conf/
rm server.xml
wget https://raw.githubusercontent.com/contactbeowolf/ds-tests/master/server.xml

cd /opt/tomcat/apache-tomcat-9.0.19/bin/
source ~/.bashrc
./startup.sh
