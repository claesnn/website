docker stop frontend-stage
docker run -d -p 8080:80 --name frontend-stage frontend