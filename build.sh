npm i
npm run build
docker build -t my-nginx-image .
docker run -d -p 80:80 --name my-nginx-container my-nginx-image