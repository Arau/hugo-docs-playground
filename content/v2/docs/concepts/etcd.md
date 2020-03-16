# What is Etcd

Etcd is a distributed, strongly consistent key value store that is used by
StorageOS to maintain a distributed consensus. As the backing store for
Kubernetes, StorageOS uses etcd for many of the same reasons.

StorageOS uses Etcd as the backing store for all StorageOS objects. Whenever a
request is made to create, update or delete an object the result is written to
Etcd before the transaction is acknowledged. Following a model such as this
allows StorageOS to tolerate partitions of StorageOS nodes from each other,
while also being able to tolerate partitions of StorageOS nodes from Etcd to
continue writing to volumes.

# Why is Etcd Required

An Etcd cluster is required for running StorageOS in order to provide a backing store for StorageOS. 
* Strong consistency model
* Etcd maintains distributed consensus
* Backing store for k8s 


