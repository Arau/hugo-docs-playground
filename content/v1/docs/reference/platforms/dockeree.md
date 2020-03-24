---
linkTitle: DockerEE
title: Docker Enterprise Edition
---

Docker EE and the Universal Control Plane can run on different Linux
distributions. StorageOS supports RHEL, CentOS, Debian, and selected Ubuntu
images. For more details, check out the supported OSs in the
[prerequisites page]({{< ref "docs/prerequisites/systemconfiguration.md" >}}).

StorageOS only supports Kubernetes nodes managed by Docker Enterprise Edition,
not those nodes running Swarm. Mixed nodes (those running Kubernetes and Swarm
workloads) are not supported. As a consequence, StorageOS volumes can only be
provisioned on Kubernetes nodes, and only these nodes should be used for
stateful workloads.
