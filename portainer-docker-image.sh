################### portainer docker image up #################
docker volume create portainer_data

docker run -d -p 8000:8000 -p 9191:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:2.11.1
###############################################################
