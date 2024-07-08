#!/usr/bin/env bash
# Automating nginx configuration

# Update package lists and install Nginx
sudo apt-get update
sudo apt-get -y install nginx

# Ensure the Nginx directory exists
if [ -d "/etc/nginx" ]; then
  # Add the custom header inside the server block
  sudo sed -i "/server {/a\    add_header X-Served-By \$hostname;" /etc/nginx/nginx.conf

  # Test the Nginx configuration for syntax errors
  sudo nginx -t

  # Restart Nginx to apply changes
  sudo service nginx restart
else
  echo "Nginx directory does not exist. Installation might have failed."
fi
