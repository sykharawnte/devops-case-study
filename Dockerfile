# # Dockerfile
# FROM node:18
# WORKDIR /app
# COPY src/ .
# EXPOSE 3000
# CMD ["node", "index.js"]
# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source code
COPY src/ .

# Expose port (make sure index.js uses the same port)
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
