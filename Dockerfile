FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war  http://admin:admin@3.85.141.53:8081/repository/release/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20240105.060732-1.war
EXPOSE 8083
CMD ["catalina.sh", "run"]
