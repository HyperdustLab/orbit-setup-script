
CLUSTER_DATA_DIR="/data/ipfs-cluster"

if [ ! -d "$CLUSTER_DATA_DIR" ] || [ ! -f "$CLUSTER_DATA_DIR/service.json" ]; then
  echo "Initializing IPFS Cluster..."
  ipfs-cluster-service init
else
  echo "IPFS Cluster is already initialized."
fi

ipfs-cluster-service daemon
