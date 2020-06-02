# run
```
docker-compose down && docker-compose build && docker-compose up -d;
```

# logs
```
docker-compose logs
```

# connect
```
docker exec -it enketo_express /bin/sh
```


# todo
* encryption key, api key in config.json.template file should be unique and stable
* how to configure nginx to work with central nginx setup
* support email should be configurable. maybe some other things should be too?

# questions
* can't seem to load translations. usually happens because of build failure? or no restart?
* why does central write outside the docker folder?

# docker reset

removes all containers, images, and volumes. you probably don't want to do this.
```
docker rm -f $(docker ps -a -q);
docker rmi -f $(docker images -q);
docker system prune -a -f;
```