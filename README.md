# Dockerize Laravel App

# ![Laravel RealWorld Example App](.github/readme/logo.png)

[![RealWorld: Backend](https://img.shields.io/badge/RealWorld-Backend-blueviolet.svg)](https://github.com/gothinkster/realworld)
[![Tests: status](https://github.com/f1amy/laravel-realworld-example-app/actions/workflows/tests.yml/badge.svg)](https://github.com/f1amy/laravel-realworld-example-app/actions/workflows/tests.yml)
[![Coverage: percent](https://codecov.io/gh/f1amy/laravel-realworld-example-app/branch/main/graph/badge.svg)](https://codecov.io/gh/f1amy/laravel-realworld-example-app)
[![Static Analysis: status](https://github.com/f1amy/laravel-realworld-example-app/actions/workflows/static-analysis.yml/badge.svg)](https://github.com/f1amy/laravel-realworld-example-app/actions/workflows/static-analysis.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellowgreen.svg)](https://opensource.org/licenses/MIT)

## PROJECT DETAILS
- Write a Docker file and Docker-Compose file for the services involved in deploying laravel app
- Mount a volume to write
- 1. A realtime log entry
- 2. MySQL data

## Requirements
- Laravel app repo( you can fork it or clone it here https://github.com/f1amy/laravel-realworld-example-app.git)
- Docker Engine (v19.03.0+)
- Docker Compose

## Steps to Dockerizing the app
### Step 1:

Install Docker Desktop (includes both Docker Engine and Docker Compose)

OR

Install Docker Engine and Docker Compose separately.

### Step 2:

Create a docker-compose.yaml file in the root directory of your project.

### Step 3:

Create a php directory in the root directory of your project and add a Dockerfile.

### Step 4:

Create a laravel.ini file inside the docker/php directory.

### Step 5:

Create a nginx directory in the root directory of your project and add a Dockerfile.


### Step 6:

Create a entrypoint.sh file inside nginx directory.

### Step 7:

Create a fpm-template.conf file inside nginx directory.

#### Step 8:

Create a nginx.conf file inside nginx directory.

### Step 9:

In the root directory of your project create a .env file from the existing .env.example file and modify the following fields in your .env file to use the values specified in the database container

To bring all containers up:

```
$ docker-compose up -d 
```

The command will take a while to run, since it will build the images for the first time.