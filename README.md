# github-keygen

## run once
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/h53/github-keygen/main/install.sh)" [prefix] [suffix]
```

---

### download script
```
git clone git@github.com:h53/github-keygen.git --depth=1
```

### add ssh key to github
```
./localrun.sh
```

### check key status
```
ssh -T git@github.com
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
