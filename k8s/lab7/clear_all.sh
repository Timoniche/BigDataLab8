kubectl delete service datanode
kubectl delete deployment datanode

kubectl delete service namenode
kubectl delete deployment namenode

kubectl delete service datamart
kubectl delete deployment datamart

#kubectl delete persistentvolumeclaim datanode-pv-claim-lab7 --force
#kubectl delete persistentvolumeclaim namenode-pv-claim-lab7 --force
#kubectl delete pv datanode-pv-lab7 --grace-period=0 --force
#kubectl delete pv namenode-pv-lab7 --grace-period=0 --force

#kubectl delete sparkapplication kmeans-lab7
