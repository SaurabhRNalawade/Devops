### Installation
```
sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
```
sudo chmod +x /usr/local/bin/docker-compose
```
```
docker-compose --version
```
### Example
```
version: '3.8'

services:
  springboot-app:
    image: openjdk:17-jdk-slim
    container_name: springboot-app
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:8080"
    depends_on:
      - mysql-db
    environment:
      SPRING_DATASOURCE_URL: jdbc:mysql://mysql-db:3306/mydatabase
      SPRING_DATASOURCE_USERNAME: exampleuser
      SPRING_DATASOURCE_PASSWORD: examplepass

  mysql-db:
    image: mysql:8.0
    container_name: mysql-db
    environment:
      MYSQL_ROOT_PASSWORD: example
      MYSQL_DATABASE: mydatabase
      MYSQL_USER: exampleuser
      MYSQL_PASSWORD: examplepass
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  mysql_data:
```
