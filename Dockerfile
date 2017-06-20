FROM java:8
EXPOSE 8080
ADD otp.jar /var/otp/otp.jar
ADD graphs /var/otp/graphs
ENTRYPOINT ["java","-jar","/var/otp/otp.jar"]
