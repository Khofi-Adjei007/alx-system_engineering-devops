# Application Server Setup Guide

## Overview

This guide provides comprehensive instructions for setting up an application server to serve dynamic content for an Airbnb clone project. The project involves integrating an application server with Nginx on Ubuntu 16.04, ensuring seamless deployment and serving of web content.

## Background Context

Your web infrastructure currently utilizes Nginx for serving web pages. However, for handling dynamic content, an application server is required. This project aims to integrate an application server into the existing infrastructure and configure it to serve the Airbnb clone project.

## Resources

Before proceeding, it's recommended to review the following resources:

- [Application server vs web server](#)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](#)
- [Running Gunicorn](#)
- [Upstart documentation](#)

## Requirements

### General

- Ensure Python-related tasks are executed using Python 3.
- All configuration files must be properly commented.
- Bash scripts should adhere to Ubuntu 16.04 LTS standards.
- Bash scripts must pass Shellcheck without errors.
- All Bash scripts should start with `#!/usr/bin/env bash`.
  
### Servers

| Name            | Username | IP            | State   |
|-----------------|----------|---------------|---------|
| 237219-web-01   | ubuntu   | 52.3.242.14   | running |
| 237219-web-02   |          |               |         |
| 237219-lb-01    |          |               |         |

## Tasks

### 0. Set up development with Python

- Ensure SSH configuration for web-01 is completed.
- Install the `net-tools` package.
- Clone the `AirBnB_clone_v2` repository.
- Configure `web_flask/0-hello_route.py` to serve content from `/airbnb-onepage/` on port 5000.

### 1. Set up production with Gunicorn

- Install Gunicorn and required libraries.
- Configure Gunicorn to serve content from the same route as the previous task.
- Ensure Gunicorn is bound to port 5000.
- Verify functionality by accessing the specified route.

### 2. Serve a page with Nginx

- Configure Nginx to serve the page from the route `/airbnb-onepage/`.
- Proxy requests to the process listening on port 5000.
- Test the configuration locally and on the public IP.

### 3. Add a route with query parameters

- Expand the web application by adding another service for Gunicorn.
- Configure Nginx to proxy requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance listening on port 5001.
- Test the configuration.

### 4. Let's do this for your API

- Clone the `AirBnB_clone_v3` repository.
- Set up Nginx so that the route `/api/` points to a Gunicorn instance listening on port 5002.
- Test the setup by accessing API endpoints.

### 5. Serve your AirBnB clone

- Clone the `AirBnB_clone_v4` repository.
- Configure Gunicorn to serve content from `web_dynamic/2-hbnb.py` on port 5003.
- Set up Nginx to properly serve static assets.
- Verify website functionality.

## Copyright

Copyright © 2024 ALX. All rights reserved.

For additional inquiries, please contact [ALX](https://example.com).
