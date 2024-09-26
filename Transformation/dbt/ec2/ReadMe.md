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
