helm upgrade --install airflow apache-airflow/airflow -n airflow  \
  -f values.yaml \
  --debug
