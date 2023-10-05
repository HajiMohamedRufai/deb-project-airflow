# Authuntecticate with your github
gcloud auth login

# set project-use
gcloud config set project deb-project-401113

# create gke-cluster
gcloud container clusters create airflow-cluster \
--machine-type n1-standard-1 \
--num-nodes 1 \
--zone "europe-west4"

# enable cluster-api
gcloud services enable container.googleapis.com

# connect to the cluster (use cluster context)
gcloud container clusters get-credentials airflow-cluster --region europe-west4 --project deb-project-401113

# create namespace in the cluster (to be the one used to deploy airflow with helm)
kubectl create namespace airflow

# add apache-airflow repo 
helm repo add apache-airflow https://airflow.apache.org

# Deploy airflow on the cluster 
# first airflow="name of release of chart", 2nd airflow="namespace in gke."
helm upgrade --install airflow apache-airflow/airflow -n airflow --debug 


# configuring airflow deployment:
# access values.yaml and edit the file
helm show values apache-airflow/airflow > values.yaml

# update-values in the cluster 
helm upgrade --install airflow apache-airflow/airflow -n airflow  \
  -f values.yaml \
  --debug



