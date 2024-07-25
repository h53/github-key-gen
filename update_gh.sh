# https://github.com/cli/cli/releases
version=2.27.0

mkdir -p gh/linux/aarch64
mkdir -p gh/linux/x86_64
mkdir -p gh/darwin/arm
mkdir -p gh/darwin/x86_64

url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_linux_arm64.tar.gz"
curl -Lk $url --output gh/linux/aarch64/content.tar.gz

url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_linux_amd64.tar.gz"
curl -Lk $url --output gh/linux/x86_64/content.tar.gz

url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_macOS_arm64.tar.gz"
curl -Lk $url --output gh/darwin/arm/content.tar.gz

url="https://github.com/cli/cli/releases/download/v$version/gh_${version}_macOS_amd64.tar.gz"
curl -Lk $url --output gh/darwin/x86_64/content.tar.gz