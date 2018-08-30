FROM mhart/alpine-node

# Set the default working directory
WORKDIR /usr/src

# Install dependencies
COPY package.json package-lock.json ./
RUN NODE_ENV=production npm install --silent

# Copy the relevant files to the working directory
COPY . .

# Build and export the app
RUN npm run build-now
