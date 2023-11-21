# Use Node.js 14 as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Run your Playwright tests when the Docker container starts
CMD ["npx", "jest", "--config", "jest.config.js", "tests/playwright-tests"]

