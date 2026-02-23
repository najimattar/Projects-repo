apt install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "AWS CLI installed successfully"
aws --version
echo "AWS CLI version displayed above"
echo "AWS CLI installation and verification completed"