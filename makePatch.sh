#!/bin/sh

distDir=${HOME}'/patches/will/be/generated/here'
targetDir=${HOME}'/git/repository/dir'
# Edit this hash number array
commits=('2dbc285' '8649898' 'a7b86fb' )

cd $targetDir
for commit in ${commits[@]}; do
  git show --no-prefix ${commit} > ${distDir}${commit}.patch
done