FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install && npm install --save-dev nodemon

COPY . .

EXPOSE 3500

CMD ["npm", "start"]
