#!/bin/bash
# keygen_git clone git@github.com:h53/github-key-gen.git --depth=1

op=$0
url=$1
params=${@:2}

if [[ $0 =~ keygen_git ]]; then
    op=$1
    url=$2
    params=${@:3}
fi

repo=`echo $url | sed 's/github.com/github-keygen/'`

echo git $op $repo $params

# git $op $repo $params