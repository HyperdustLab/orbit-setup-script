#!/bin/sh
if [ ! -f /data/ipfs/config ]; then
  echo "Initializing IPFS for the first time..."
  ipfs init
else
  echo "IPFS is already initialized."
fi

exec ipfs daemon
