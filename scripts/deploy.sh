#!/usr/bin/env sh
sudo set -x

sudo openssl aes-256-cbc -K $encrypted_4bf016b63da4_key -iv $encrypted_4bf016b63da4_iv
  -in deploy.enc -out deploy -d

sudo tar -czf package.tgz * && \
sudo scp -i deploy package.tgz deploy@159.89.205.104:test_travis.tgz && \
sudo ssh -i deploy deploy@159.89.205.104 'bash -s' < ./scripts/untar.sh
