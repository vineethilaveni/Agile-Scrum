#!/bin/bash -ex
#deploy
curl --fail -T ftp92.war "http://manager:manager@$STAGING_HOST:8080/manager/text/deploy?path=/ftp92&update=true"
#scp -i ~/.ssh/ftp_jenkins.pem ftp92.war centos@$STAGING_HOST:/home/centos/apache-tomcat-8.5.23/webapps
#database
mysql --host ftp-staging.c1jpaaszplju.us-east-1.rds.amazonaws.com -u ftp92 -pftp92 ftp92 < database.ddl
mysql --host ftp-staging.c1jpaaszplju.us-east-1.rds.amazonaws.com -u ftp92 -pftp92 ftp92 < database.dml
#rest tests
rm -rf restservice
mkdir -p restservice/integration-test/src/test/java
cd restservice/integration-test/src/test/java
jar -xvf ../../../../../ftp92-integration-tests-1.0-test-sources.jar
cd ../../../
cp ./src/test/java/META-INF/maven/com.hexa/ftp92-integration-tests/pom.xml .
#before running tests, make sure that the war file has been deployed completely
n=0
while true
do
  response=$(curl --write-out %{http_code} --silent --output /dev/null http://$STAGING_HOST:8080/ftp92/favicon.ico)
  [ $response -eq 200 ] && break
  n=$[$n+1]
  if [ $n -ge 5 ]
  then
    echo "Web app never came up; aborting..."
    exit -1
  else
    echo "Web app still not up; sleeping and retrying..."
  fi
  sleep 30
done
/var/lib/jenkins/apache-maven-3.5.2/bin/mvn test -Dservice.host=$STAGING_HOST -Dservice.webapp=ftp92
#protractor tests
cd ../..
tar -xvzf lm-app.zip
cd lm-app
./node_modules/protractor/bin/protractor --baseUrl "http://$STAGING_HOST:8080/"