FROM tomcat:8

RUN rm -rf /usr/local/tomcat/webapps/*

COPY /root/.jenkins/workspace/deploy-onlinebookstore/gameoflife-web/target/gameoflife.war /root/apache-tomcat-9.0.71/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]
