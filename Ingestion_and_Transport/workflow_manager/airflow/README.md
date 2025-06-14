

# Airflow Environment
1. [EC2 instance on AWS](#ec2instance)
2. [Install Airflow](#install_airflow)

## 1. Create EC2 instance on AWS <a name="ec2instance"></a>

Create Ubuntu t3a.medium EC2 instance
Enable Public DNS / IPV4
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

## 2. Install Airflow <a name="install_airflow"></a>

Install Python 3 pip Package Manager
```
sudo apt install python3-pip
```

Install Python 3 Virtual Environment Package
```
sudo apt install python3-venv
```

Create Virtual Environment for Airflow
```
python3 -m venv airflow_venv
```

Activate the Virtual Environment
```
source airflow_venv/bin/activate
```

Install Required Python Packages for Airflow

**AIRFLOW V2:**

```
pip install pandas s3fs apache-airflow
```

Run Airflwo DB init

```
airflow db init 
```


Create Admin user
```
airflow users  create --role Admin --username admin --email admin --firstname admin --lastname admin --password xxxxxxxxxx

```

Start Airflow Web Server in Standalone Mode
```
airflow webserver --port 8080
```

**AIRFLOW V3:**

```
pip install "apache-airflow[celery]==3.0.1" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-3.0.1/constraints-3.9.txt"
pip install pandas s3fs
pip install apache-airflow-providers-fab

CREATE USER:
ls
cd airflow 
nano airflow.cfg
auth_manager = airflow.providers.fab.auth_manager.fab_auth_manager.FabAuthManager

airflow api-server --port 8080

```



Airflow started
![image](https://github.com/user-attachments/assets/a1f5b4df-2c4d-40ea-8a14-0952ad997413)


![image](https://github.com/user-attachments/assets/236be9f0-6a91-4763-9576-4869d2020cb2)


