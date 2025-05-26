

from __future__ import annotations

import json
import textwrap
import pendulum

from airflow.providers.standard.operators.python import PythonOperator
from airflow.sdk import DAG


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
        ti = kwargs["ti"]
        print('loading.....')



    leagues_load_task = PythonOperator(
        task_id="leagues_load_task",
        python_callable=leagues_load,
    )
    
    leagues_load_task