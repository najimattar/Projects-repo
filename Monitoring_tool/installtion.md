## 1. Install Node Exporter
```
cd /opt/
wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz

tar xvfz node_exporter-1.10.2.linux-amd64.tar.gz

mv node_exporter-1.10.2.linux-amd64 node_exporter
```
create user
```
sudo useradd --no-create-home --shell /usr/sbin/nologin nodeusr
```

move binary and set ownership
```
cp /opt/node_exporter/node_exporter /usr/local/bin
sudo chown nodeusr:nodeusr /usr/local/bin/node_exporter
```

## 2. create node export Service
```
sudo vi /etc/systemd/system/node_exporter.service
```
```
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=nodeusr
Group=nodeusr
Type=simple
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
```
## Reload and Start Service
```
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable --now node_exporter
sudo systemctl status node_exporter
```

## Test in browser:
```
http://YOUR_SERVER_IP:9100/metrics
```