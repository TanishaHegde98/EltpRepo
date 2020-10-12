FROM node:12-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
COPY package.json /src/app
RUN npm install --only=prod
COPY . /src/app
EXPOSE 3000
CMD ["node", "index.js"]