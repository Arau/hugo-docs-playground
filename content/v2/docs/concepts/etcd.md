---
title: "Etcd"
linkTitle: "Etcd"
---

# What is Etcd

Etcd is a distributed, strongly consistent key value store that is used by
StorageOS to durably persist the StorageOS cluster state. As the backing
store for Kubernetes, StorageOS uses etcd for many of the same reasons.

StorageOS uses Etcd as the backing store for all StorageOS objects. Whenever a
request is made to create, update or delete an object the result is written to
Etcd before the transaction is acknowledged. Using etcd as a configuration
store allows nodes to retrieve the current cluster state after being offlined,
allowing offlined nodes to rejoin the cluster.

N.B. StorageOS v2.0 does not provide an embedded etcd server as previous
versions did. You will need to setup an etcd server for StorageOS to use prior
to installation of StorageOS.

