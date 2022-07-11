#!/usr/bin/env bash
set -euo pipefail

pushd ../dcrptd-miner

dotnet publish -c Release -p:PublishSingleFile=true --self-contained --runtime linux-x64
pushd bin/Release/net6.0/linux-x64/publish/
tar -cvvf miner.tar.gz .
rm -f /tmp/miner.tar.gz || true
cp miner.tar.gz /tmp

echo "OK"
