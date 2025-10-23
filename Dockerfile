FROM node:alpine

WORKDIR /usr/src/app

RUN npm install -g @angular/cli

# Install dependencies first (for caching)
COPY package*.json ./
RUN npm install

# Copy the rest only for production builds
# (In dev, we’ll mount it instead)
COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]
