FROM tomcat:8.5.34-jre8

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y openjdk-8-jdk && apt-get install -y openjdk-8-jre

RUN apt-get install -y maven

RUN apt-get install -y git

RUN git clone https://github.com/akshaytiwari29/finalcalci2.git

RUN ls

RUN cd  Repo1 && mvn package && cp target/*.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]

EXPOSE 8080
