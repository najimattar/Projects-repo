sudo su -
sudo apt install apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Apache2 has been installed and started successfully." > /var/www/html/index.html
