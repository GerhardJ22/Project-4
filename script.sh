docker build -t gerhardj22/jfc-web:latest .

docker volume create jfc-data

docker run -d --name jfc-container -p 8080:8080 gerhardj22/jfc:latest

docker ps

docker logs jfc-container

docker stop jfc-container

docker start jfc-container