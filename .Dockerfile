# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0

#add tomcat users
ADD /build/tomcat-users.xml /usr/local/tomcat/conf/
ADD /build/context.xml /usr/local/tomcat/webapps/manager/META-INF/

#deploying the spring application into tomcat
ADD /build/HelloWorld.war /usr/local/tomcat/webapps/HelloWorld.war

#starting up and running the tomcat service
WORKDIR /usr/local/tomcat/bin
CMD ["./catalina.sh", "run"]
