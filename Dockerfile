
# Common build stage
FROM node:14.15.0

COPY . ./app

WORKDIR /app

RUN npm install

RUN npm migrate

EXPOSE 3000

CMD ["npm", "run", "dev"]


