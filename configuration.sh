kubectl create -f k8s/spark-namespace.yml

kubectl create serviceaccount spark --namespace=default

kubectl create clusterrolebinding spark-operator-role --clusterrole=cluster-admin --serviceaccount=default:spark --namespace=default

helm repo add spark-operator https://kubeflow.github.io/spark-operator

helm install ddulaev-lab5 spark-operator/spark-operator --namespace spark-operator --set sparkJobNamespace=default --set webhook.enable=true --debug --version 1.2.7