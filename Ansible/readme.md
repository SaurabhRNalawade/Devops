## Ansible

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

### setup inventory file
```
sudo nano /etc/ansible/hosts
private-ip of node
```
### ping all nodes to test connection
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
