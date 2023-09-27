# Install puppet-lint version 2.5.0

# Define an 'exec' resource named 'puppet-lint'
exec { 'puppet-lint':
  # Specify the command to execute, which installs puppet-lint version 2.5.0
  command => '/usr/bin/apt-get -y install puppet-lint -v 2.5.0',
}
