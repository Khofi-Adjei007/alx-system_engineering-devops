# Puppet Manifest for configuring an Nginx server

# Install the Nginx package using APT
package { 'nginx':
  provider => 'apt',
}

# Define an exec resource to create the HTML page with "Holberton School" content
exec { 'hlbtn_page':
  command => '/usr/bin/sudo /bin/echo Holberton School > /var/www/html/index.nginx-debian.html',
}

# Define an exec resource to configure a redirection rule in the Nginx configuration
exec { 'redirect_page':
  command => '/usr/bin/sudo /bin/sed -i "66i rewrite ^/redirect_me https://www.youtube.com/ permanent;" /etc/nginx/sites-available/default',
}

# Define an exec resource to start the Nginx service
exec { 'start_server':
  command => '/usr/bin/sudo /usr/sbin/service nginx start',
}
