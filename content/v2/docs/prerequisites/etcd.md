---
title: Etcd
---

StorageOS requires an etcd cluster in order to function.

For more information on why Etcd is required please see our [Etcd concepts]({{< ref "docs/concepts/etcd.md">}}) page
and for production recommendations for Etcd installations please see our [Etcd
Operations]({{< ref "docs/operations/external-etcd/_index.md" >}}) page.

> N.B. StorageOS does not recommend using the Kubernetes etcd cluster for
> StorageOS installations

## Using Etcd with StorageOS

During installation of StorageOS the `kvBackend` parameters of the StorageOS
operator are used to specify the address of the etcd cluster. See the
[StorageOS cluster operator
configuration](/docs/reference/cluster-operator/examples/) examples for more
information.
