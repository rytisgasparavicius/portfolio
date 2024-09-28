### Activate the environment shared with Airflow
```
source airflow_venv/bin/activate
```


### Install Snowflake addapter
```
python -m pip install dbt-snowflake
```

### Create and enter directory
```
mkdir dbt_proj
cd dbt_proj
```

### Initialize project
```
dbt init
```

Enter Project details (project name, adaptar, database connection, etc..)

![image](https://github.com/user-attachments/assets/689923b7-1a5a-4258-a3ce-2b0c049798cb)


### Enter project directory and run dbt debug

![image](https://github.com/user-attachments/assets/c3d4de61-26cf-4d6c-886c-9a54765f1e31)


### Install DBT Power User extension

![image](https://github.com/user-attachments/assets/ad1fef3d-b5d9-4d49-8fb6-0e8d009c82c0)

### DBT Power User  Setup

![image](https://github.com/user-attachments/assets/d7ce05be-a221-4b9d-800a-6bbc3895ced6)
![image](https://github.com/user-attachments/assets/16027e33-e11e-4ccf-b554-77ee0bf5b8ad)

### Activate environment. Go to Project directory. DBT Run

![image](https://github.com/user-attachments/assets/c2b03907-76e9-40ef-9ee6-9eb084065c6c)

![image](https://github.com/user-attachments/assets/1720f75f-b9ee-4b12-baa1-77145a0b1542)


### Setup Git repo
```
git init
git config core.sparseCheckout true
git remote add -f origin https://github.com/rytisgasparavicius/portfolio.git
echo "Transformation/dbt/ec2/repo/*" > .git/info/sparse-checkout
git checkout origin/main
```

### Push changes
```
git pull origin main
git add * --sparse -f
git pull origin main
git push origin HEAD:main
```
