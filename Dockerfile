FROM node

RUN mkdir /app

WORKDIR /app
COPY package.json /app
RUN yarn install

COPY . /app
RUN yarn build

EXPOSE 3000

CMD yarn start
