---
title: Etcd
linkTitle: Etcd
---

# Etcd

StorageOS requires an etcd cluster in order to function.

For more information on why Etcd is required please see our Etcd concepts page
and for production recommendations for Etcd installations please see our [Etcd
Operations](/docs/operations/external-etcd) page.

> N.B. StorageOS does not recommend using the Kubernetes etcd cluster for
> StorageOS installations

## Using Etcd with StorageOS

During installation of StorageOS the `kvBackend` parameters of the StorageOS
operator are used to specify the address of the etcd cluster. See the
[StorageOS cluster operator
configuration](/docs/reference/cluster-operator/examples/) examples for more
information.
