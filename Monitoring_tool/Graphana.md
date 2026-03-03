## 1. Install the prerequisite packages:
```
sudo apt-get install -y apt-transport-https wget gnupg
```
## 2. Import the GPG key:
```
sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/grafana.asc https://apt.grafana.com/gpg-full.key
sudo chmod 644 /etc/apt/keyrings/grafana.asc
```

- To add a repository for stable releases, run the following command:
```
echo "deb [signed-by=/etc/apt/keyrings/grafana.asc] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

- To add a repository for beta releases, run the following command:
```
echo "deb [signed-by=/etc/apt/keyrings/grafana.asc] https://apt.grafana.com beta main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

- Run the following command to update the list of available packages:
```
sudo apt-get update
```

## 3.To install Grafana OSS, run the following command:
```
sudo apt-get install grafana
```

## 4.To install Grafana Enterprise, run the following command:
```
sudo apt-get install grafana-enterprise
```
## start service
```
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo systemctl status grafana-server
```
