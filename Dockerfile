FROM java:8
EXPOSE 8080
ADD otp.jar otp.jar
ADD graphs /var/otp/graphs
ENTRYPOINT ["java","-jar","otp.jar"]
