# # FROM openjdk:11
# # ARG JAR_FILE=target/*.jar
# # COPY ${JAR_FILE} app.jar
# # ENTRYPOINT ["java","-jar","/app.jar"]
# # EXPOSE 8082
# FROM tomcat:9.0

# COPY target/healthcare-project-test.war /usr/local/tomcat/webapps/

# EXPOSE 8080

# CMD ["catalina.sh", "run"]
FROM openjdk:17

COPY target/medicure-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "app.jar"]
