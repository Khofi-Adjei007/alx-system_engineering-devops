## Web Stack Debugging #4

### Overview
This project focuses on debugging issues in a web server setup featuring Nginx under pressure using ApacheBench. The goal is to resolve the issues causing a significant number of failed requests.

### Requirements
- All files are interpreted on Ubuntu 14.04 LTS.
- Files should end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without errors.
- Puppet manifests files must end with the extension `.pp`.
- Files will be checked with Puppet v3.4.
- `puppet-lint` installation:
  ```bash
  $ apt-get install -y ruby
  $ gem install puppet-lint -v 2.1.1
  ```

### Tasks

#### Task 0: Sky is the limit, let's bring that limit higher
- Debug and fix the web server setup to handle the load effectively.
- Use ApacheBench to simulate HTTP requests and identify failed requests.
- Update the Nginx configuration to handle the load and reduce failed requests.

#### Task 1: User limit
- Change the OS configuration to enable logging in with the `holberton` user without encountering "Too many open files" errors.
- Puppet manifest (`1-user_limit.pp`) provided to automate the configuration change.

### Execution
- Clone the GitHub repository: [alx-system_engineering-devops](https://github.com/yourusername/alx-system_engineering-devops)
- Navigate to the `0x1B-web_stack_debugging_4` directory.
- Execute the Puppet manifest files:
  ```bash
  sudo puppet apply 0-the_sky_is_the_limit_not.pp
  sudo puppet apply 1-user_limit.pp
  ```

### Author
This project is maintained by ALX. Copyright © 2024 ALX. All rights reserved.
