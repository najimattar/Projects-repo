## 1. Install Prometheus
- Step 1: Download Prometheus
```
cd /opt
sudo wget https://github.com/prometheus/prometheus/releases/download/v2.52.0/prometheus-2.52.0.linux-amd64.tar.gz

```
- Step 2: Extract
```
sudo tar -xvf prometheus-2.52.0.linux-amd64.tar.gz
sudo mv prometheus-2.52.0.linux-amd64 prometheus
```

- Step 3: Create User
```
sudo useradd --no-create-home --shell /usr/sbin/nologin prometheus
sudo chown -R prometheus:prometheus /opt/prometheus

```
- Step 4: Edit Prometheus Config
```
sudo vi /opt/prometheus/prometheus.yml
```

```
global:
  scrape_interval: 5s

scrape_configs:
  - job_name: "prometheus"
    static_configs:
      - targets:
          - "localhost:9090"

  - job_name: "node_exporter"
    static_configs:
      - targets:
          - "worker_node1_public_ip:9100"
          - "worker_node2_public_ip:9100"

```
- Step 5: Create Service File
```
sudo vi /etc/systemd/system/prometheus.service
```
```
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/opt/prometheus/prometheus \
  --config.file=/opt/prometheus/prometheus.yml \
  --storage.tsdb.path=/opt/prometheus/data

[Install]
WantedBy=multi-user.target
```

- Step 6: Start Prometheus
```
sudo mkdir /opt/prometheus/data
sudo chown -R prometheus:prometheus /opt/prometheus/data
```
```
sudo systemctl daemon-reload
sudo systemctl start prometheus
sudo systemctl enable prometheus
sudo systemctl status prometheus

```

- Check:
```
http://YOUR_SERVER_IP:9090
```