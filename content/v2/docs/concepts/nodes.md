---
title: Nodes
linkTitle: Nodes
---


A StorageOS node is any machine (virtual or physical) that is running the
StorageOS container. Under Kubernetes orchestration a StorageOS container
runs as part of a Kubernetes pod on all Kubernetes worker node. StorageOS nodes
aggregate host storage and present this storage as StorageOS [pools]({{< ref "docs/concepts/pools.md" >}}).
