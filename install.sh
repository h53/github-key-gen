mkdir github-key-gen-tmp
cd github-key-gen-tmp

# download
echo "download..."
curl -LJO https://github.com/h53/github-key-gen/archive/refs/heads/main.zip && unzip github-key-gen-main.zip

echo "generate key..."
cd github-key-gen-main
./localrun.sh
cd .. # github-key-gen-main

cd .. # github-key-gen-tmp

echo "clean cache..."
rm -rf github-key-gen-tmp

echo "done!"
