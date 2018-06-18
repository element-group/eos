# EOS Mainnet Docker Image ![Docker Build Status](https://img.shields.io/docker/build/elementgroup/eos.svg)
Start a [EOS Blockchain Server](https://hub.docker.com/r/elementgroup/eos/) running on the Mainnet in seconds with Docker.

# Environment Variables
- `AGENT_NAME` give your server a name
- `IP_ADDRESS` IP Address for the server
- `SERVER_NAME` Producer name
- `SIGNATURE_PUB` Signature provider public key
- `SIGNATURE_PRIV` Signature provider private key

# EOS Blockchain Data Directory
You can mount a directory to this Docker image to keep the blockchain data. Mount your directory with `/opt/eosio/bin/data-dir`.

# Run the Server!
```
docker run -it -v /home/EOSDATA-DIR:/opt/eosio/bin/data-dir -p 8888:8888 -p 9876:9876 -e IP_ADDRESS='192.168.1.1' -e AGENT_NAME='EOSserver' elementgroup/eos
```