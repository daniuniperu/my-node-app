# Use the official Node.js image as the base
FROM node:16.20.1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application's port
EXPOSE 5000

# Start the application
CMD ["npm","run","start"]
