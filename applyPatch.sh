#!/bin/sh

patchDir=${HOME}'/generated/patches/here'
targetDir=${HOME}'/dir/to/apply/patches'
# Edit this hash number array
commits=('2dbc285' '8649898' 'a7b86fb')

for commit in ${commits[@]}; do
  cd $targetDir
  patch -p0 < ${patchDir}/${commit}.patch
done