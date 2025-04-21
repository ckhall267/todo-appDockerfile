FROM node:12-alpine
RUN apk add --no-cache git
RUN git clone -q https://github.com/ckhall267/todo-appDockerfile.git
WORKDIR /todo-appDockerfile
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]
