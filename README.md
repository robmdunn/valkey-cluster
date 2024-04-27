# valkey-cluster
A Valkey-based container image for Bitnami "redis-cluster" chart

This is a proof-of-concept to build a drop-in valkey-based container image for the Bitnami "redis-cluster" chart.  Waving goodbye to Redis is one Ctrl+Shift+H or ⇧⌘H away.

This will probably not be updated or maintained.

## Building

```bash
docker build -t valkey-cluster .
```

## Use a prebuilt image:
```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install valkey-cluster bitnami/redis-cluster --set image.repository"robmd/valkey-cluster" --set image.tag="7.2"
```