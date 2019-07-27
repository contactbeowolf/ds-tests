if [ -f /tomcat/webapps/SpringApp.war ]; then 
    rm /tomcat/webapps/SpringApp.war
fi
if [ -d /tomcat/webapps/SpringApp ]; then 
    rm -r /tomcat/webapps/SpringApp
fi
mvn clean package -DskipTests
cp -r /home/user/workspace/target/*.war /tomcat/webapps/ 
supervisorctl restart spring
