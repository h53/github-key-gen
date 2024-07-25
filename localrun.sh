# localrun [prefix] [suffix]
prefix=$1
suffix=$2

./gh_install.sh && export PATH=$(pwd)/gh_cli/bin/:$PATH

./ssh-keygen.sh $prefix $suffix

# test connection
ssh -T git@github.com

echo https://github.com/settings/keys to see keys!

# del gh token
rm ~/.config/gh/hosts.yml
