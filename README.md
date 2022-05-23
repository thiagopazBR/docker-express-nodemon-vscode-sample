# docker-express-nodemon-vscode-sample

For production:</br>
docker build . -t image-prod:1.0 --target=production</br>
docker run --name container-prod -p 8080:8080 -p 9229:9229 -d -t image-prod:1.0</br>


For dev</br>
docker build . -t image-dev:1.0 --target=dev</br>
docker run --name container-dev -p 8080:8080 -p 9229:9229 -d -t image-dev:1.0</br>
