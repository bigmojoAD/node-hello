# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the image
WORKDIR /app

# Copy the package.json file to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Specify the command to run when the image is run as a container
CMD ["node", "index.js"]