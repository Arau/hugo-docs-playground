---
title: Kubernetes
weight: 1
redirect_from: /docs/install/schedulers/kubernetes
redirect_from: /docs/install/kubernetes
---

> Make sure the 
> [prerequisites for StorageOS]({{< ref "docs/prerequisites/_index.md" >}}) are
> satisfied before proceeding.

&nbsp;

{{< tabs tabTotal="6" tabID="1" tabHREFPrefix="k8s-" tabName1="1.17" tabName2="1.16" tabName3="1.15" tabName4="1.14" tabName5="1.13" tabName6="1.12" >}}
{{% tab firstTab="true" tabRef="k8s-117" %}}

# Install StorageOS on Kubernetes 1.17

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.17" %}}


{{% /tab %}}
{{% tab tabRef="k8s-116" %}}

# Install StorageOS on Kubernetes 1.16

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.16" %}}

{{% /tab %}}
{{% tab tabRef="k8s-115" %}}

# Install StorageOS on Kubernetes 1.15

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.15" %}}

{{% /tab %}}
{{% tab tabRef="k8s-114" %}}

# Install StorageOS on Kubernetes 1.14

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.14" %}}

{{% /tab %}}

{{% tab tabRef="k8s-113" %}}

# Install StorageOS on Kubernetes 1.13

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.13" %}}

{{% /tab %}}
{{% tab tabRef="k8s-112" %}}

# Install StorageOS on Kubernetes 1.12

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.12" %}}

{{% /tab %}}
{{< /tabs >}}

{{% include "content/first-volume.md" %}}
