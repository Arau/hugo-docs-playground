---
title: "Etcd"
linkTitle: "Etcd"
url: "concepts/etcd/"
---

# What is Etcd

Etcd is a distributed, strongly consistent key value store that is used by
StorageOS to maintain a distributed consensus about the state of the StorageOS
cluster. As the backing store for Kubernetes, StorageOS uses etcd for many of
the same reasons.

StorageOS uses Etcd as the backing store for all StorageOS objects. Whenever a
request is made to create, update or delete an object the result is written to
Etcd before the transaction is acknowledged. Following a model such as this
allows StorageOS to tolerate partitions of StorageOS nodes from each other,
while also being able to tolerate partitions of StorageOS nodes from Etcd to
continue operations on volumes.

N.B. StorageOS v2.0 does not provide an embedded etcd server as previous
versions did. You will need to setup an etcd server for StorageOS to use prior
to installation of StorageOS. 

