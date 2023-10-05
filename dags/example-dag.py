from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.python import PythonOperator
from datetime import datetime

# Define default_args to specify the DAG's behavior
default_args = {
    'owner': 'your_name',
    'start_date': datetime(2023, 1, 1),
    'retries': 1,
}

# Create the DAG object
dag = DAG(
    'etl_example',
    default_args=default_args,
    description='A simple ETL DAG',
    schedule_interval=None,  # You can specify a schedule here (e.g., '@daily')
)

# Define tasks
start_task = DummyOperator(task_id='start', dag=dag)

def extract():
    # Code to extract data from a source
    print("Extracting data...")

def transform():
    # Code to transform the extracted data
    print("Transforming data...")

def load():
    # Code to load the transformed data into a destination
    print("Loading data...")

extract_task = PythonOperator(
    task_id='extract_data',
    python_callable=extract,
    dag=dag,
)

transform_task = PythonOperator(
   
