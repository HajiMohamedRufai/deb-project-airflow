# Here are the steps you need to follow:

# 1. Add the official Apache Airflow Helm chart repository to your Helm client by running this command: `helm repo add apache-airflow [7](https://airflow.apache.org)`
# 2. Update your Helm repositories to get the latest version of the chart by running this command: `helm repo update`
# 3. Install the chart with a release name (for example, `airflow`) and specify the URL of the Git repository where your DAG files are stored (for example, `https://github.com/user/airflow-dags.git`) by running this command: `helm install airflow apache-airflow/airflow --namespace airflow --create-namespace --set airflow.cloneDagFilesFromGit.enabled=true --set airflow.cloneDagFilesFromGit.repository=https://github.com/user/airflow-dags.git --set airflow.cloneDagFilesFromGit.branch=master --set airflow.baseUrl=http://127.0.0.1:8080`³
# 4. Wait for the chart to be deployed and check the status of your pods by running this command: `kubectl get pods -n airflow`
# 5. Access the Airflow web server by port-forwarding the service to your local machine by running this command: `kubectl port-forward svc/airflow-webserver 8080:8080 -n airflow`
# 6. Open your browser and go to [http://127.0.0.1:8080](http://127.0.0.1:8080) to see the Airflow web interface and your DAGs dashboard.

# I hope these steps help you deploy the latest airflow chart with helm on your GKE cluster. If you have any other questions, please feel free to ask me. 

# helm install airflow apache-airflow/airflow --namespace airflow --create-namespace --set airflow.cloneDagFilesFromGit.enabled=true --set airflow.cloneDagFilesFromGit.repository=https://github.com/user/airflow-dags.git --set airflow.cloneDagFilesFromGit.branch=master --set airflow.baseUrl=http://127.0.0.1:8080

############################################################################################
############################################################################################
helm repo update
helm install airflow apache-airflow/airflow --namespace airflow --create-namespace \
--set airflow.cloneDagFilesFromGit.enabled=true \
--set airflow.cloneDagFilesFromGit.repository=https://github.com/HajiMohamedRufai/deb-project-airflow \
--set airflow.cloneDagFilesFromGit.branch=main \
--set airflow.baseUrl=http://127.0.0.1:8080

# explanation:
# helm install airflow: This initiates the installation process and gives the release a name "airflow."

# apache-airflow/airflow: Specifies the Helm chart to use for the installation. In this case, it's using the Apache Airflow Helm chart from the "apache-airflow" repository.

# --namespace airflow: Specifies the Kubernetes namespace where Apache Airflow will be installed. The namespace is named "airflow" in this case.

# --create-namespace: This flag tells Helm to create the specified namespace ("airflow") if it doesn't already exist.

# --set airflow.cloneDagFilesFromGit.enabled=true: This sets a Helm value for the chart. It enables the feature to clone DAG (Directed Acyclic Graph) files from a Git repository.

# --set airflow.cloneDagFilesFromGit.repository=https://github.com/HajiMohamedRufai/deb-project-airflow: Specifies the Git repository URL from which Apache Airflow will clone DAG files. Replace this URL with the actual repository containing your DAGs.

# --set airflow.cloneDagFilesFromGit.branch=main: Specifies the Git branch (in this case, "main") to be used for cloning DAG files. You can change this to the desired branch.

# --set airflow.baseUrl=http://127.0.0.1:8080: Sets the base URL for the Apache Airflow web UI. In this example, it's set to "http://127.0.0.1:8080," but you should replace it with the actual URL where your Airflow web UI will be accessible.