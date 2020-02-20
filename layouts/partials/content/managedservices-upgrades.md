{{ $platform := .Get "platform" }}
## Kubernetes Upgrades

Currently upgrading the Kubernetes version on {{ $platform }}
**is not supported**. This is because nodes are replaced rather than being upgraded
in place. As such manual relocation of data and etcd members is required. We
are working with the {{ $platform }} team to improve the
upgrade process to create a better user experience.
