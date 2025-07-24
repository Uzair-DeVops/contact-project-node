# Use Node.js 18 as the base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install production + development dependencies (nodemon)
RUN npm install && npm install --save-dev nodemon

# Copy the rest of the app files into the container
COPY . .

# Expose port 3500 for the app
EXPOSE 3500

# Start the app using npm (which runs nodemon)
CMD ["npm", "start"]
