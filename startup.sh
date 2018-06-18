#!/usr/bin/env bash

sed -i 's/AGENT_NAME/'"$AGENT_NAME"'/g' /opt/eosio/bin/data-dir/config.ini
sed -i 's/IP_ADDRESS/'"$IP_ADDRESS"'/g' /opt/eosio/bin/data-dir/config.ini
sed -i "s/SERVER_NAME/'"$SERVER_NAME"'/g" /opt/eosio/bin/data-dir/config.ini
sed -i "s/SIGNATURE_PUB/'"$SIGNATURE_PUB"'/g" /opt/eosio/bin/data-dir/config.ini
sed -i "s/SIGNATURE_PRIV/'"$SIGNATURE_PRIV"'/g" /opt/eosio/bin/data-dir/config.ini
sed -i 's/CHAIN_DB_SIZE/'"$CHAIN_DB_SIZE"'/g' /opt/eosio/bin/data-dir/config.ini

./nodeosd.sh --genesis-json /opt/eosio/bin/data-dir/genesis.json