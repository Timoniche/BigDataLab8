kubectl create -f k8s/lab5-namespace.yml
kubectl get namespaces
kubectl apply -f k8s/spark-app-lab5.yml
kubectl get SparkApplications -n lab5