# github-keygen

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/h53/github-keygen/main/install.sh)" [prefix] [suffix]
```
cdn
```
bash -c "$(curl -fsSL https://github-keygen.pages.dev/install.sh)"
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

### config git user/email
```
git config user.email "github-keygen `uname`-`arch` [`date`]"
git config user.name "`whoami`"
```

### commit changes
```
git add .
git commit -m "update"
git push origin main
```
