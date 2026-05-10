FROM node:24

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm install -g serve

RUN npm run build


CMD ["serve", "-s", "-l", "5001", "dist"]