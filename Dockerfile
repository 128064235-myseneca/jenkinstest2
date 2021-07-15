# Common build stage
FROM node:14.15.0 as common-build-stage

COPY . ./app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]


