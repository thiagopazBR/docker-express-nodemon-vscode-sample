# docker-express-nodemon-vscode-sample

For production:
docker build . -t image-prod:1.0 --target=production
docker run --name container-prod -p 8080:8080 -p 9229:9229 -d -t image-prod:1.0


FOR dev
docker build . -t image-dev:1.0 --target=dev
docker run --name container-dev -p 8080:8080 -p 9229:9229 -d -t image-dev:1.0
