# docker-express-nodemon-vscode-sample

## For production:</br>
```docker
docker build . -t image-prod:1.0 --target=production
```
```docker
docker run --name container-prod -p 8080:8080 -p 9229:9229 -d -t image-prod:1.0
```


## For dev</br>

```docker
docker build . -t image-dev:1.0 --target=dev
```
```docker
docker run --name container-dev -p 8080:8080 -p 9229:9229 -d -t image-dev:1.0
```