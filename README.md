# github-key-gen

## run once
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/h53/github-key-gen/main/install.sh)"
```

### how to clone repo
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/h53/github-key-gen/main/keygen_git.sh)" clone git@github.com:h53/github-key-gen.git --depth=1
```
---

### [optional] you can add prefix and suffix in github key title
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/h53/github-key-gen/main/install.sh)" prefix suffix
```

### download script
```
git clone git@github.com:h53/github-key-gen.git --depth=1
```

### add ssh key to github
```
./localrun.sh
```

### check key status
```
ssh -T git@github-keygen
```

### change repo url
```
./change_url.sh

git remote -v
```

### config git user/email
```
./git_config.sh
```

### commit changes
```
git add .
git commit -m "update"
git push origin main
```
