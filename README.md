# OpenTripPlanner-GBFS-Docker

This repository contains all the files necessary to create a docker image containg an OTP server with a router for Tampa, Florida. 

The router includes GBFS feed for bikeshare ( [USF Share-A-Bull](https://github.com/NABSA/gbfs/blob/master/systems.csv#L48) ).

The OTP server was build from master branch of [OpenTripPlanner github repository after merged with the gbfs branch](https://github.com/opentripplanner/OpenTripPlanner/commit/80e29e7d22f5fc6f2a61ae75d839f4a56e6a8387).

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
