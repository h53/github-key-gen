# github-key-gen

## download script
```
git clone https://github.com/h53/github-key-gen.git --depth=1
```

## add ssh key to github
```
./localrun.sh
```

## check key status
```
ssh -T git@github-keygen
```

## change repo url
```
./change_url.sh

git remote -v
```

## config git user/email
```
./git_config.sh
```

## commit changes
```
git add .
git commit -m "update"
git push origin main
```
