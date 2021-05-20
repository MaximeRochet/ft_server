cd ..
docker build -t image .
docker run -d -p 80:80 -p 443:443 --name=content image 
docker exec -ti content bash
