FROM node:8.10.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g parcel-bundler

COPY . .

RUN npm run build

EXPOSE 1234

CMD ["npm", "run", "dev"]