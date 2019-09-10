# ubuntu-haproxy-docker
Ubuntu 18.04 and HAProxy in Docker.

## Contents
- Ubuntu 18.04
- HAProxy 1.8.21

## Build/Customize the image
If you would like to build the image from the Dockerfile. * Note you can modify the haproxy.cfg
```
docker build -t ubuntu-haproxy:latest .
```

## Pull the image
If you would like to pull the default Ubuntu HAProxy image from Docker Hub.
```
docker pull nethacker/ubuntu-18-04-haproxy:latest
```

## Start a container
If you followed the Build path above.
```
docker run -d -p 80:80 ubuntu-18-04-haproxy:latest
```
If you followed the Pull path above.
```
docker run -d -p 80:80 nethacker/ubuntu-18-04-haproxy:latest
```

## Testing
If you didn't modify the Dockerfile or HAProxy config you should be able to go to localhost port 80 in a browser and get a user/password prompt enter test/test and you should get to the HAProxy stats page.

## Notes

