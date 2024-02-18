docker stop frontend-stage
docker run -d -p 8080:80 --rm --name frontend-stage frontend