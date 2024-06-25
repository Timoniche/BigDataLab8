kubectl apply -f namenode-pv-lab6.yml
kubectl apply -f namenode-pv-claim-lab6.yml
kubectl apply -f datanode-pv-lab6.yml
kubectl apply -f datanode-pv-claim-lab6.yml

kubectl apply -f namenode-service-lab6.yml
kubectl apply -f namenode-deployment-lab6.yml

sleep 20

kubectl apply -f datanode-service-lab6.yml
kubectl apply -f datanode-deployment-lab6.yml

#kubectl apply -f spark-app-lab6.yml
