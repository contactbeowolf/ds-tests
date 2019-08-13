if [ -f /tomcat/webapps/ROOT.war ]; then 
    rm /tomcat/webapps/ROOT.war
fi
if [ -d /tomcat/webapps/ROOT ]; then 
    rm -r /tomcat/webapps/ROOT
fi
mvn clean package -DskipTests
cp -r /home/user/workspace/target/*.war /tomcat/webapps/
supervisorctl restart spring
