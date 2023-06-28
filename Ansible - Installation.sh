----------------------------------------------------Start-Here-----------------------------------------------------

Create a Ec2 Intance 

-> Sudo apt update -y
-> Sudo apt-add-repository ppa:ansible/ansible
-> Sudo apt update    // necessarry to update again
-> sudo apt install ansible


Now check Inventory to ensure ansible properly downloaded or not
cat /etc/ansible/hosts

Now to connect with other worker node or other ansible instance

then sudo vim /etc/ansible/hosts
add servers IP in this File with proper name convention 

for eg: 
         server1 ansible_host=3.111.187.243
         server2 ansible_host=13.234.77.62
         server3 ansible_host=3.108.228.219


ansible servers -m ping
