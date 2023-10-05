from airflow.operators.python import PythonOperator
from datetime import datetime

# Define a function that will be executed by PythonOperator
def extract_data():
    # Your data extraction logic here
    pass

def transform_data():
    # Your data transformation logic here
    pass

def load_data():
    # Your data loading logic here
    pass

# Create task instances for each step
extract_task = PythonOperator(
    task_id='extract_data',
    python_callable=extract_data,
    dag=dag,
)

transform_task = PythonOperator(
    task_id='transform_data',
    python_callable=transform_data,
    dag=dag,
)

load_task = PythonOperator(
    task_id='load_data',
    python_callable=load_data,
    dag=dag,
)

# Define the order of task execution
start_task >> extract_task >> transform_task >> load_task
