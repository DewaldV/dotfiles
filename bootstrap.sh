#! /bin/env sh

sudo apt update

sudo apt install -y $(tr '\n' ' ' < debian-packages)
