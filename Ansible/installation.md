### Ansible install:
```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```
### ansible version:
```
ansible --version
```
### ssh connection:
- on master and worker_nodes
```
ssh-keygen
```
- copy ssh_public_key from master node
```
cat .ssh/id_ed25519.pub
```
- paste in worker node ssh authorized file
```
vi .ssh/authorized_keys
```

### Edit config file
```
vi etc/ansible/ansible.cfg

```
- paste this
```
[defaults]
inventory = hosts
host_key_checking = False
```

### add host Privat_ip:
```
vi ansible/host
```

### set permission
```
vi etc/ssh/sshd_config
```
- paste this 
```
PermitRootLogin yes
PubkeyAuthentication yes
```
### check ping
```
ansible all -m ping
```