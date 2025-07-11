# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy dependency files and install packages
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port and run app
EXPOSE 3000
CMD ["node", "index.js"]
