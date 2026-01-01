FROM tomcat:9.0-jdk17

# Supprimer les apps par défaut
RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le WAR généré par Maven
COPY target/java-web-app-1.0.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
