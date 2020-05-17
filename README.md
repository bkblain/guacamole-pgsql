# guacamole-pgsql


docker run --name guacd -d guacamole/guacd

docker run --name guacdb --network guacamole-network -e POSTGRES_DB=guacamole_db -e POSTGRES_USER=guacuser -e POSTGRES_PASSWORD=guacpw guacdb:1.0

docker run --name guacserver --network guacamole-network -e GUACD_HOSTNAME=guacd -e POSTGRES_HOSTNAME=guacdb -e POSTGRES_DATABASE=guacamole_db -e POSTGRES_USER=guacuser -e POSTGRES_PASSWORD=guacpw -p 8080:8080 guacamole/guacamole
