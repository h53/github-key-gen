# ssh-keygen [prefix] [suffix]
prefix=$1
suffix=$2

if [[ $prefix != "" ]]; then
    prefix="$prefix|"
fi

if [[ $suffix != "" ]]; then
    suffix="|$suffix"
fi

set +x

function addConfigItem()
{
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i "" '/# generated by github-key-gen/,+3d' ~/.ssh/config
        # del blank line
        sed -i "" '/^$/d' ~/.ssh/config
    else
        sed -i '/# generated by github-key-gen/,+3d' ~/.ssh/config
        # del blank line
        sed -i '/^$/d' ~/.ssh/config
    fi
    
    echo >> ~/.ssh/config
    echo "# generated by github-key-gen" >> ~/.ssh/config
    echo "Host github-keygen" >> ~/.ssh/config
    echo "    HostName ssh.github.com" >> ~/.ssh/config
    echo "    IdentityFile ~/.ssh/id_github_key_gen" >> ~/.ssh/config
    echo "Added github-keygen in ~/.ssh/config"
}

sshKeyFile=id_github_key_gen
title="${prefix}github-key-gen-`uname`-`arch`[`date`]`whoami`(`hostname`)$suffix"

ssh-keygen -t rsa -b 4096 -C "$title" -f ~/.ssh/${sshKeyFile}

ssh-agent ssh-add ~/.ssh/${sshKeyFile}

gh auth login -h github.com -s admin:public_key
# gh auth refresh -h github.com -s admin:public_key

gh ssh-key add < ~/.ssh/${sshKeyFile}.pub --title "$title" && \

addConfigItem
