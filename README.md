# FrontendTest

This project was generated using [Angular CLI](https://github.com/angular/angular-cli) version 20.3.7.

# Docker Setup for Angular Project

## Prerequisites
- Docker installed on your system
- Angular CLI (optional, for local development)

## Project Structure
frontend-test/
├── Dockerfile
├── .dockerignore
├── angular.json
├── package.json
├── tsconfig.json
└── src/
└── ... 



## Building and Running the Container

### 1. Build the Docker Image
```bash
docker build -t frontend-test .

```


### 2. Run the Container
```bash
docker run -p 4200:4200 frontend-test
```

Once running, access your application at:
`http://localhost:4200/`

## Troubleshooting
## Permission Issues
On Linux, you might need to run Docker commands with sudo or add your user to the docker group.

## Build Cache Issues
To force a clean build:
```bash
docker build --no-cache -t frontend-test .
```