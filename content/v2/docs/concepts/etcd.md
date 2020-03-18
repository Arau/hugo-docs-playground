---
title: "Etcd"
---
## What is etcd

[etcd](https://etcd.io) is an open-source distributed, strongly consistent key value store that is
used by StorageOS to durably persist the StorageOS cluster state. As the
backing store for Kubernetes, StorageOS uses etcd for many of the same reasons.

StorageOS uses etcd as the single source of truth for all StorageOS objects.
Whenever a request is made to create, update or delete an object the result is
written to etcd before the request is completed. Using etcd as a configuration
store allows nodes to retrieve the current cluster state after being offlined,
allowing offlined nodes to rejoin the cluster.

> N.B. StorageOS v2.0 does not provide an embedded etcd server as previous
> versions did. You will need to setup an etcd server for StorageOS to use
> prior to installation of StorageOS. Please see our [etcd Operations]({{< ref
"docs/operations/external-etcd/_index.md" >}}) page for more information on how
> to install and configure etcd.

