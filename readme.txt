This file is to introduce the usage of the files in the same folder.

[Basic files]
- e2iplist.txt
- e2iplist.txt
- e2iplist.txt

[Shell scripts]

- delte_all_chunks.sh
- login.sh


[Basic files]
- e2iplist.txt
This file contains a list of IP addresses, each of which represents 
an EC2 instance and can be connected via SSH. These IPs are for three 
types of EC2 instances.
Index   Purpose 
0       the master 
1-16    workers 
** Note that a lot of shell scripts below use this file to locate workers.

- ec2key_seoul.pem
This is the private key used for SSH connection.

- xmlgen.c
The source code of xmlgen that is used to generate XMark documents.


[Scripts]
- login.sh ip_index
This file is used to simplify the login command. Example,
ip_index refers to the index of IP addresses in e2iplist.txt.
$ sh login.sh 0




- delte_all_chunks.sh
Delete all chunks stored on workers. 

- distribute_chunks.sh xml num_total_chunks num_pc
Distribute chunks of an XML document xml onto a number of computers,
ranging from start to end, where start and end are the indices of 
IP addresses stored in ec2iplist.txt.
$ sh distribute.sh xmark160 1 8
distribute xmark160 

- start_multiple_workers.sh num_pc num_workers_per_pc memory_size

- start_master xml start-end:num_workers_per_pc


1) update ec2iplist.txt 0
2) distribute xml num_chunks num_pc
3) Uploads_fixed.sh num_pc 
4) start workers  
5) start master 





