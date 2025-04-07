#Run the following commands to disable ICMP timestamp responses:
bashCopyEditsudo sysctl -w net.ipv4.icmp_echo_ignore_all=1
sudo sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1
sudo sysctl -w net.ipv4.icmp_ratelimit=0


#Make the changes permanent by adding them to /etc/sysctl.conf:
sudo nano /etc/sysctl.conf

#Add the following lines at the end of the file:
iniCopyEditnet.ipv4.icmp_echo_ignore_all=1 net.ipv4.icmp_ignore_bogus_error_response


#Apply the changes:
bashCopyEditsudo sysctl -p
#what i did 

# Block ICMP Timestamp Requests Using sysctl
net.ipv4.icmp_echo_ignore_all=1
net.ipv4.icmp_ignore_bogus_error_responses=1
net.ipv4.icmp_ratelimit=0
#end of icmp

# Added this here
 sudo nano /etc/sysctl.conf
 #ran this commands
 sudo sysctl -p
 sudo sysctl -a | grep icmp
