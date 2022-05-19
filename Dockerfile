FROM maven:3.8.5-jdk-11 AS build 
WORKDIR /javaapp 
RUN apt-get install git 
RUN git clone https://gitlab.com/ot-interview/javaapp.git /javaapp 
RUN ["mvn", "package"] 
FROM tomcat:8.0 
WORKDIR /javaapp 
COPY --from=build /javaapp/target/Spring3HibernateApp.war /usr/local/tomcat/webapps 
LABEL "Env"="Dev" 
LABEL "App"="Java Application" 
