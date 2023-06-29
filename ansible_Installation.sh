----------------------------------------------------Start-Here-----------------------------------------------------

Create a Ec2 Intance 

-> Sudo apt update -y
-> Sudo apt-add-repository ppa:ansible/ansible
-> Sudo apt update    // necessarry to update again
-> sudo apt install ansible


Now check Inventory to ensure ansible properly downloaded or not
cat /etc/ansible/hosts

Now to connect with other worker node or other ansible instance (they must have same key pair as of master)

then sudo vim /etc/ansible/hosts
add servers IP in this File with proper name convention 

for eg: 

[servers]
server1 ansible_host=13.233.93.219
server2 ansible_host=3.110.134.3
server3 ansible_host=13.234.112.199

[servers:vars]

ansible_python_interpreter=/usr/bin/python3
ansible_user=ubuntu
ansible_ssh_private_key_file=/home/ubuntu/.ssh/Ansible-key-all.pem

NOTE -: ansible is case sensitive please type carefully and always do cross check

Then, To connect with all nodes  
-> ansible servers -m ping

and to connect with only single node 
make a inventory file

Then, 
-> ansible -i "inventory_file_name" servers -m ping

to update all the servers
-> ansible servers -a "sudo apt update"

to see disk space of all servers
-> ansible servers -a "df -h"

to see uptime of all servers
-> ansible servers -a "uptime"





















