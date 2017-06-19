# OpenTripPlanner-GBFS-Docker

Includes all the files to run an OTP server with tampa router. I had to remove portland as it had files larger than supported by github.

## Building the image

Run the following command from inside the directory where the the github repository was downloaded

`docker build -t <image-name> .`

## Running the image
When running the docker image include the parameters --server --autoScan. 
Example:

`docker run -p 4000:8080 <image-name> --server --autoScan`

In this example I'm mapping port 4000 to 8080.

## Getting bike information

`http://localhost:4000/otp/routers/tampa/bike_rental`

Use the same port as before. In the example above 4000.
