#!/bin/bash
## create account in parity
engine_signer=$(parity account new --chain genesis.json --keys-path ./data/keys --password node.pwds)
#engine_signer="0xtestestete"

echo "the signer address is :$engine_signer"

tempstr="/\[mining\]/a\engine_singer=\"$engine_signer\""
## append the engine_signer string in node.toml
sed -i $tempstr node.toml
 ## append the validator string and  accounts in genesis.json

 ## to do
