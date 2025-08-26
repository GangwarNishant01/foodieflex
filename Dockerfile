# Use Node.js LTS image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install node dependencies
RUN npm install

# Copy all source code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
