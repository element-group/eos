FROM eosio/eos

VOLUME /opt/eosio/bin/data-dir
WORKDIR /opt/eosio/bin

COPY config.ini /opt/eosio/bin/data-dir/config.ini
COPY genesis.json /opt/eosio/bin/data-dir/genesis.json
COPY startup.sh /opt/eosio/bin/

ENV AGENT_NAME="elementgroup"
ENV IP_ADDRESS="0.0.0.0"
ENV SERVER_NAME="eoserver"
ENV SIGNATURE_PUB=""
ENV SIGNATURE_PRIV=""
ENV CHAIN_DB_SIZE="8192"

EXPOSE 8888
EXPOSE 9876

ENTRYPOINT ./startup.sh