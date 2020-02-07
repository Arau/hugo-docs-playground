---
title: Install StorageOS
weight: 1
platform: dockeree
platform-pretty: "DockerEE"
platformUC: Docker EE
k8s-version: 1.11
cmd: kubectl
redirect_from: /docs/install/schedulers/dockeree
redirect_from: /docs/install/dockeree
---

This section of documentation covers the use of StorageOS in Docker Enterprise Edition.

Docker EE and the Universal Control Plane can be executed in different Linux
distributions. StorageOS supports RHEL, CentOS, Debian, and selected Ubuntu
images. For more details, check out the supported OS in the [prerequisites page]({{< ref "docs/prerequisites/systemconfiguration.md" >}}).

StorageOS only supports Kubernetes nodes managed by Docker Enterprise Edition,
not those running Swarm. Mixed nodes (those running Kubernetes and Swarm
workloads)  are also not supported.  As a consequence, StorageOS volumes can
only be provisioned on Kubernetes nodes, and only these nodes should be used
for stateful workloads.

# Install StorageOS

> Make sure the 
> [prerequisites for StorageOS]({{< ref "docs/prerequisites/_index.md" >}}) are
> satisfied before proceeding.

{% include operator/install.md %}
