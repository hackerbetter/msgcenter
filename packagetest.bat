set MAVEN_OPTS= -Xms128m -Xmx512m
mvn clean package -Ptest -Dmaven.test.skip=true && pause