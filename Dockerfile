# Dockerfile
FROM node:18
WORKDIR /app
COPY src/ .
EXPOSE 3000
CMD ["node", "index.js"]
Use official Node.js image
Use Node.js base image


