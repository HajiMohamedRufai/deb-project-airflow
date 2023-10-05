# Configuring git sync:
# Edit values.yaml

# Generate ssh key
ssh-keygen -t rsa -b 4096 -C "mohamedrufai59@gmail.com"

# Output will be in ~/.ssh/
# Add public key (id_rsa.pub) to your github repo  as Deploy keys \
# containing airflow project.

# Add private key (id_rsa) to gke-cluster as k8s generic secret
kubectl create secret generic deb-project-git-secret --from-file=gitSshKey=/Users/hajirufai/.ssh/id_rsa -n airflow

# update-values in the cluster
helm upgrade --install airflow apache-airflow/airflow -n airflow  \
  -f values.yaml \
  --debug
  