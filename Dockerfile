FROM node:20-alpine
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git

# Where our Strapi app will live
WORKDIR /opt/

# Copy package files
COPY package.json ./

# Increase Node memory limit so npm install doesn't run out of memory
ENV NODE_OPTIONS="--max-old-space-size=2048"

# Install dependencies
RUN npm install

# Copy the rest of our application
WORKDIR /opt/app
COPY . .
ENV PATH /opt/node_modules/.bin:$PATH

RUN chown -R node:node /opt/app
# USER node

# Build Strapi admin
# RUN ["npm", "run", "build"]

# Expose port and start
EXPOSE 1337
CMD ["npm", "run", "develop"]
