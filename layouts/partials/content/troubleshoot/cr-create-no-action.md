## StorageOS resources not created

### Issue:

StorageOS resources such as NS, DaemonSets or Pods are not being created after
creating the ClusterOperator CustomResource.

```bash
kubectl -n storageos get all
No resources found.
```

### Reason:
Most likely you forgot to create the StorageOS secret before creating the
CustomResource.


### Assert
Check the events in the NameSpace you created the CustomResource.

```bash
kubectl -n default get events
NAME             KIND             TYPE    REASON          SOURCE                      MESSAGE
storageos.15717  StorageOSCluster Warning FailedCreation  storageoscluster-operator   Secret "storageos-api" not found
```

### Solution:

Delete the `stos` Custom Resource. 

> **Warning:** This will delete all StorageOS Pods. Therefore, the data will be inaccessible
> until you restart the StorageOS cluster and the application Pods mounting
> StorageOS volumes.

```bash
kubectl -n default delete stos storageos
```

Create the Secret following the [examples page.]({{ ref . "docs/reference/cluster-operator/examples.md" }})

Create the Custom Resource once again.
