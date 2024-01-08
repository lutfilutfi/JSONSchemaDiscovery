# Use Node.js version 18 as the base image
FROM node:18

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    gcc \
    git \
    make \
    python3 && \
    rm -rf /var/lib/apt/lists/* && \
    update-ca-certificates && \
    ln -s /usr/bin/python3 /usr/bin/python

# Set the working directory inside the container
WORKDIR /app/

# Install Angular CLI globally
RUN npm install -g @angular/cli typescript \
    npm cache clean --force
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install && \
    npm cache clean --force

# Copy the rest of the application files to the working directory
COPY . .

# Build the Angular application
RUN ["npm", "run", "build"]

# Set the command to run the application launches both fe and be
CMD ["npm", "run", "dev"]

# Expose port 3000
EXPOSE 3000
