# use the base image as open JDK11
FROM openjdk:11

# Create the Argument in case you wish to pass jar file path at CLI
# the default value is the target directory where jar gets gentated
AGE JAR_FILE=TARGET/*.jar

# Copy the jar file
COPY ${JAR_FILE} app.jar

# Execute the command java -jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
