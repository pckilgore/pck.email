FROM mhart/alpine-node

# Set the default working directory
WORKDIR /usr/src
ENV NODE_ENV=production
RUN apk add --no-cache git
# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --silent

# Copy the relevant files to the working directory
COPY . .

# Build and export the app
RUN npm run generate
