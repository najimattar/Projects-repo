# path : cd /etc/ansible/

#### Project Structure

```
ansible-nginx/
│
├── nginx.yaml
├── inventory
│
└── roles/
    └── myrole/
        ├── tasks/
        │   └── main.yml
        ├── handlers/
        │   └── main.yml
        ├── templates/
        │   └── index.html.j2
        ├── vars/
        │   └── main.yml
        └── defaults/
            └── main.yml
```

## 1. Inventory File
```
[web]
<your-server-ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
```

## 2. Main Playbook
- nginx.yaml
```
---
- name: Install and Configure Nginx
  hosts: web
  become: yes

  roles:
    - myrole
```

## 3. create Role: myrole
```
cd /etc/ansible/roles
ansible-galaxy role init myrole
```
- roles/myrole/tasks/main.yml
```
---
- name: Install Nginx
  apt:
    name: nginx
    state: present
    update_cache: yes

- name: Start and Enable Nginx
  service:
    name: nginx
    state: started
    enabled: yes

- name: Deploy index.html
  template:
    src: index.html.j2
    dest: /var/www/html/index.html
    owner: www-data
    group: www-data
    mode: '0644'
  notify: Restart Nginx
```

- roles/myrole/templates/index.html.j2
```
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>{{ message }}</h1>
</body>
</html>
```

- roles/myrole/vars/main.yml
```
message: "hello bachho"

```

- roles/myrole/defaults/main.yml
```
# You can override default variables here later
```

## Run the Playbook
```
ansible-playbook -i inventory nginx.yaml
```
