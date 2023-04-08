repo=`git remote -v | awk 'NR==1{ print $2 }' | sed 's/github.com/github.keygen/'`

git remote remove origin

git remote add origin $repo

echo change local repo url to $repo