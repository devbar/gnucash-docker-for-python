#!/bin/bash

GC_VERSION=3.7

if [ $# -gt 0 ]; then
  GC_VERSION=$1
fi

rm gnucash-*tar.gz*

wget https://github.com/Gnucash/gnucash/releases/download/"$GC_VERSION"/gnucash-"$GC_VERSION".tar.gz

if [ -d "./gnucash" ]; then
  rm -rf ./gnucash
fi

tar xzf gnucash-"$GC_VERSION".tar.gz

mv gnucash-"$GC_VERSION" gnucash

rm gnucash-"$GC_VERSION".tar.gz