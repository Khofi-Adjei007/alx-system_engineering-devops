# Puppet manifest to change OS configuration for holberton user

exec { 'change-os-configuration-for-holberton-user':
  command => '/bin/echo "holberton soft nofile 10000" >> /etc/security/limits.conf && /bin/echo "holberton hard nofile 15000" >> /etc/security/limits.conf',
  path    => '/bin',
  onlyif  => '/bin/grep -q "^holberton soft nofile" /etc/security/limits.conf && /bin/grep -q "^holberton hard nofile" /etc/security/limits.conf',
}
