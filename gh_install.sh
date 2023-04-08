
version=2.27.0

function get_gh_cli()
{
url=

if [[ "$OSTYPE" == "darwin"* ]]; then
  # mac
  echo "mac os!" `arch`
  if [[ `arch` =~ "x86_64" ]]; then
    url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_macOS_amd64.tar.gz"
  elif [[ `arch` =~ "arm" ]]; then
    url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_macOS_arm64.tar.gz"
  fi

else
  # linux
  echo "linux os!" `arch`
  if [[ `arch` =~ "x86_64" ]]; then
    url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_linux_amd64.tar.gz"
  elif [[ `arch` =~ "aarch64" ]]; then
    url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_linux_arm64.tar.gz"
  fi
fi

echo $url

curl -Lk $url --output content.tar.gz

tar -xf content.tar.gz
mv gh_$version* gh_cli
rm -rf content.tar.gz

}

if [[ ! -d gh_cli ]]; then
  get_gh_cli 
fi

export PATH=$(pwd)/gh_cli/bin/:$PATH