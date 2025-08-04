# # Dockerfile
# FROM node:18
# WORKDIR /app
# COPY src/ .
# EXPOSE 3000
# CMD ["node", "index.js"]
# Use official Node.js image
# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy application code into container
COPY src/ .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]

