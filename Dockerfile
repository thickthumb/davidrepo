# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm ci --omit=dev

# Copy the rest of the app
COPY . .

# Expose app port (change if needed)
EXPOSE 8080

# Start app
CMD ["npm", "start"]
