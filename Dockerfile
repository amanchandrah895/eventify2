# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package files first (optimizes Docker build caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files into the container
COPY . .

# Expose the port your app runs on (e.g., 3000 for Express.js)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]