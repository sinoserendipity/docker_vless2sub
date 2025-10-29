# Use a smaller base image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application files
COPY _worker.js ./
COPY wrangler.toml ./

# Expose the port
EXPOSE 3000

# Set environment variables
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Start command
CMD ["npx", "wrangler", "dev", "--local", "--port", "3000", "--ip", "0.0.0.0"]
