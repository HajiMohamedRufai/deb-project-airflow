# Get current chart values
# helm get values <release-name> -n <namespace>
helm get values airflow -n airflow
# helm get values airflow -n airflow -o yaml