## Ansible
### What is Ansible?
Ansible is an open-source automation tool primarily used for configuration management, application deployment, task automation, and multi-node orchestration. It simplifies the process of automating IT tasks by defining them in simple, human-readable YAML (YAML Ain't Markup Language) files called playbooks.

### Installation Steps For Amazon Linux...
```
sudo yum update
```
```
sudo yum install ansible
```
```
ansible --version
```
#### create a key-pair using ssh-keygen command
#### copy public-key form master authorized_keys file in node .ssh dir

### Setup Inventory File
```
sudo nano /etc/ansible/hosts
private-ip of node
```
### Ping All Nodes To Test Connection
```
ansible all -m ping
```
```
- name: update and install and nginx
  hosts: all
  become: true

  tasks:
   
  - name: Upgrade all packages
    yum:
     name: '*'
     state: latest
      
  - name: Install the latest version of nginx
    yum:
     name: nginx
     state: latest
      
  - name: Start nginx
    service:
     name:  nginx
     state: started
     enabled: true
```
### Run playbook
```
ansible-playbook nginx.yaml
```

### Installation Steps For Ubuntu...
#### Installation
```
sudo apt-add-repository ppa:ansible/ansible
```
```
sudo apt update
```
```
sudo apt install ansible
```
```
ansible --version
```
### Setup Inventory Files
```
sudo nano /etc/ansible/hosts
private-ip of instance
```
### Edit Ansible.cfg
```
[defaults]
inventory = hosts
host_key_checking = False
```
### Ping All Nodes To Test Connection
```
ansible all -m ping
```
```
- name: update and install and nginx
  hosts: all
  become: true

  tasks:
   
  - name: Upgrade all packages
    apt:
     name: '*'
     state: latest
      
  - name: Install the latest version of nginx
    apt:
     name: nginx
     state: latest
      
  - name: Start nginx
    service:
     name:  nginx
     state: started
     enabled: true
```
### Run Playboook
```
ansible-playbook playbook.yaml
```
