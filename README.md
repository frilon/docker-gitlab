# docker-gitlab

This repo uses [frilon/docker-traefik](https://github.com/frilon/docker-traefik) as "web server".


## Get initial `root` user password:
```sh
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```
