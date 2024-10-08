#!/bin/bash

# Read sequencerInbox address from the orbitSetupScriptConfig JSON file
SEQUENCER_INBOX_ADDRESS=$(jq -r '.sequencerInbox' /home/user/.arbitrum/orbitSetupScriptConfig.json)

# Read the parent-chain-node-url from the nodeConfig JSON file
PARENT_CHAIN_NODE_URL=$(jq -r '.node."data-availability"."parent-chain-node-url"' /home/user/.arbitrum/nodeConfig.json)

# Check if the "data-availability" key exists
if jq -e '.node | has("data-availability")' /home/user/.arbitrum/nodeConfig.json >/dev/null; then
    # Start daserver with the new command
    /usr/local/bin/daserver \
        --data-availability.extra-signature-checking-public-key /home/user/.arbitrum/keys/ecdsa.pub \
        --data-availability.parent-chain-node-url "$PARENT_CHAIN_NODE_URL" \
        --enable-rpc \
        --rpc-addr '0.0.0.0' \
        --enable-rest \
        --rest-addr '0.0.0.0' \
        --log-level 5 \
        --data-availability.local-cache.enable \
        --data-availability.local-file-storage.enable    \
        --data-availability.local-file-storage.data-dir /home/user/das-data \
        --data-availability.s3-storage.enable \
        --data-availability.s3-storage.access-key "" \
        --data-availability.s3-storage.bucket ""  \
        --data-availability.s3-storage.region "" \
        --data-availability.s3-storage.secret-key '' \
        --data-availability.key.key-dir /home/user/.arbitrum/keys \
        --data-availability.sequencer-inbox-address "$SEQUENCER_INBOX_ADDRESS"
else
    # Log a message and exit if "data-availability" key doesn't exist
    echo "You're running in Rollup mode. No need for das-server, so exiting the container ..."
    exit
fi