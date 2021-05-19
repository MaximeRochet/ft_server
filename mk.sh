#docker rmi -f $(docker ps -a -q)
#docker rm -f $(docker images -a -q)

docker build -t image .
docker run -d -p 80:80 -p 443:443 --name=content image
