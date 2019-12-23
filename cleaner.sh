#!/usr/bin/env bash
set -x

for dir in tmp-dest cache tmp-build pkg
do
  find . -type d -name $dir -exec rm -rf {} \;
done
