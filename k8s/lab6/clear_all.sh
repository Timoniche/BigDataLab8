kubectl delete service datanode
kubectl delete deployment datanode

kubectl delete service namenode
kubectl delete deployment namenode

#kubectl delete persistentvolumeclaim datanode-pv-claim-lab6 --force
#kubectl delete persistentvolumeclaim namenode-pv-claim-lab6 --force
#kubectl delete pv datanode-pv-lab6 --grace-period=0 --force
#kubectl delete pv namenode-pv-lab6 --grace-period=0 --force

#kubectl delete sparkapplication kmeans-lab6
