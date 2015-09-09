# polaris-microservice
Initial Commit

***Docker Build Command to create local image - This needs to be run from the directory dockerfile is in
docker build -t micro1 .

*** Docker run to mount src directory to container for development
docker run -p 3002:3000 -v $(PWD)/src://src -w //src -d polaris/micro1
