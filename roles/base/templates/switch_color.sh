#!/bin/bash

COLOR_FILE="/etc/nginx/active_color.conf"
CURRENT=$(grep -o 'blue\|green' $COLOR_FILE)

if [ "$CURRENT" = "blue" ]; then
    NEW="green"
else
    NEW="blue"
fi

echo "set \$active_color $NEW;" | sudo tee $COLOR_FILE
sudo nginx -t && sudo systemctl reload nginx

echo "Switched Nginx to $NEW environment."
echo $NEW > current_color
