# Mysql
FROM ubuntu/mysql:latest
RUN chown -R mysql:root /var/lib/mysql/
ENV MYSQL_DATABASE=bt3
ENV MYSQL_ROOT_PASSWORD=123456789
ENV MYSQL_PASSWORD=123456789
COPY ./query_mysql.sql /docker-entrypoint-initdb.d/
RUN apt-get update
RUN apt-get install nodejs -y
WORKDIR /app
COPY package.json .
RUN apt-get install -y npm 
RUN npm install -y
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
