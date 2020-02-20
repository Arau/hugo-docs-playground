---
title: Install StorageOS
weight: 1
platform: "kubernetes"
platform-pretty: "Kubernetes"
platformUC: Kubernetes
chart-version: 0.2.x
redirect_from: /docs/install/schedulers/kubernetes
redirect_from: /docs/install/kubernetes
---

> Make sure the 
> [prerequisites for StorageOS]({{< ref "docs/prerequisites/_index.md" >}}) are
> satisfied before proceeding.

&nbsp;

{{< tabs tabTotal="6" tabID="1" tabName1="1.17" tabName2="1.16" tabName3="1.15" tabName4="1.14" tabName5="1.13" tabName6="1.12" >}}
{{% tab tabNum="1" %}}

# Install StorageOS on Kubernetes 1.17

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.17" %}}


{{% /tab %}}
{{% tab tabNum="2" %}}

# Install StorageOS on Kubernetes 1.16

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.16" %}}

{{% /tab %}}
{{% tab tabNum="3" %}}

# Install StorageOS on Kubernetes 1.15

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.15" %}}

{{% /tab %}}
{{% tab tabNum="4" %}}

# Install StorageOS on Kubernetes 1.14

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.14" %}}

{{% /tab %}}

{{% tab tabNum="5" %}}

# Install StorageOS on Kubernetes 1.13

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.13" %}}

{{% /tab %}}
{{% tab tabNum="6" %}}

# Install StorageOS on Kubernetes 1.12

{{% operator-install cmd="kubectl" platform="kubernetes" sched_version="1.12" %}}

{{% /tab %}}
{{< /tabs >}}


{{% include "content/first-volume.md" %}}
