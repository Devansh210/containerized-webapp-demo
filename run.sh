#/bin/bash
#Running the container
docker run -d --name python-webapp -p 5000:5000 python-webapp:latest

#Display container IP
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' python-webapp