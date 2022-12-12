# docker-gitlab

Get initial `root` user password:
```sh
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```
