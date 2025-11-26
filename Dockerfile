# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json (and package-lock if present)
COPY package*.json ./

# Install dependencies (none in our case, but standard practice)
RUN npm install

# Copy everything else
COPY . .

# Expose port used by the app
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]