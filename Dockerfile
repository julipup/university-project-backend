FROM node:16-alpine
WORKDIR /usr/src/app

COPY ./package.json .
COPY ./package-lock.json .

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]