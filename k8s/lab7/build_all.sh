kubectl apply -f namenode-pv-lab7.yml
kubectl apply -f namenode-pv-claim-lab7.yml
kubectl apply -f datanode-pv-lab7.yml
kubectl apply -f datanode-pv-claim-lab7.yml

kubectl apply -f namenode-service-lab7.yml
kubectl apply -f namenode-deployment-lab7.yml

sleep 20

kubectl apply -f datanode-service-lab7.yml
kubectl apply -f datanode-deployment-lab7.yml

#kubectl apply -f spark-app-lab7.yml
