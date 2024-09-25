

# Airflow Environment
1. [EC2 instance on AWS](#ec2instance)
2. [Some paragraph](#paragraph1)
    1. [Sub paragraph](#subparagraph1)
3. [Another paragraph](#paragraph2)

## Create EC2 instance on AWS <a name="ec2instance"></a>

Create Ubuntu t3.medium EC2 instance

![image](https://github.com/user-attachments/assets/906365ed-f9d0-4334-a278-b4c6fe8027a8)

Create Key Pair and download as ".pem" extension.

![image](https://github.com/user-attachments/assets/8d05eabe-0122-440d-8443-5da5d25484b6)

Create Inbound entry in Security Group for ports 22 and 8080 for "My IP"

![image](https://github.com/user-attachments/assets/62499d2f-9337-4226-bae2-661826556388)


Select EC2 instance and press "Connect". 
In "SSH client" copy the example of SSH command:

![image](https://github.com/user-attachments/assets/8714e5f5-57b5-48bd-9efd-2b741105e630)

Install Remote SSH Visual Code extension 

![image](https://github.com/user-attachments/assets/e526713d-4aed-4ca4-adfd-b680c25788d5)

Press F1 and choose "Add New SSH Host"
Paste SSH example command

![image](https://github.com/user-attachments/assets/10dba711-688b-46b6-8bd6-39a905fa0f6d)

Choose config file

![image](https://github.com/user-attachments/assets/b07b75b8-7ece-409a-831a-78689fecfc87)

![image](https://github.com/user-attachments/assets/e75596fc-50a2-4eac-8def-4a7c47c666d3)

Permissions for private key file
![image](https://github.com/user-attachments/assets/0db15f44-cda4-4d54-8f7d-438cad55ab6b)



F1 and enter "Connect to Host"

![image](https://github.com/user-attachments/assets/0dc43ba0-a4ac-4026-95df-e1fa6bfb381c)

Update packages in Terminal
```
sudo apt update
```
