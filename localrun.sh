# localrun [prefix] [suffix]
prefix=$1
suffix=$2

./gh_install.sh && export PATH=$(pwd)/gh_cli/bin/:$PATH

./ssh-keygen.sh $prefix $suffix

# ./key_status.sh
echo https://github.com/settings/keys to see keys!

./del_gh_token.sh
