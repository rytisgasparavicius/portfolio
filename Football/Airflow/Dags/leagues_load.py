

from __future__ import annotations

import json
import textwrap
import pendulum
import http.client

from airflow.providers.standard.operators.python import PythonOperator
from airflow.sdk import DAG
#from airflow.providers.snowflake.operators.snowflake import SnowflakeOperator
from airflow.providers.common.sql.operators.sql import SQLExecuteQueryOperator

import json

with DAG(
    "leagues_load",
    default_args={"retries": 2},
    description="leagues_load",
    schedule=None,
    start_date=pendulum.datetime(2021, 1, 1, tz="UTC"),
    catchup=False,
    tags=["leagues"],
) as dag:
   
    dag.doc_md = __doc__

  
   
    def leagues_load(**kwargs):
        conn = http.client.HTTPSConnection("api-football-v1.p.rapidapi.com")

        headers = {
            'x-rapidapi-key': "b89554509emshd928807b9e0c597p15a6aejsn333d7eb15640",
            'x-rapidapi-host': "api-football-v1.p.rapidapi.com"
        }

        conn.request("GET", "/v3/leagues", headers=headers)

        res = conn.getresponse()
        data = res.read()
        data_json = json.loads(data.decode("utf-8"))
        for league in data_json['response']:
           print(league)
       
            
        print(data.decode("utf-8"))




    query1 = [
        """show tables in database football;""",
    ]




    leagues_load_task = PythonOperator(
        task_id="leagues_load_task",
        python_callable=leagues_load,
    )
    query1_exec = SQLExecuteQueryOperator(
        task_id="snowfalke_task1",
        sql=query1,
        conn_id="football_conn_id",
    )
    leagues_load_task >> query1_exec