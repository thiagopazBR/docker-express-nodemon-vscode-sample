FROM node:16-alpine as base

WORKDIR /usr/src/app
COPY package.json package-lock.json /usr/src/app/
COPY . /usr/src/app
EXPOSE 8080


FROM base as production
# docker build . -t tinyfilemanager-backend-prod:v1 --target=production
# docker run --name tinyfilemanager-backend-prod -p 8080:8080 -p 9229:9229 -d -t tinyfilemanager-backend-prod:v1

ENV NODE_ENV=production
RUN npm install --production

CMD ["npm", "start"]


FROM base as dev
# docker build . -t tinyfilemanager-backend-dev:v1 --target=dev
# docker run --name tinyfilemanager_backend-dev -p 8080:8080 -p 9229:9229 -d -t tinyfilemanager-backend-dev:v1

ENV NODE_ENV=development
RUN npm config set unsafe-perm true
RUN npm install
CMD ["npm", "run", "dev"]
