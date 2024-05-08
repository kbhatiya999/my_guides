[https://stackoverflow.com/questions/35942754/how-can-i-save-username-and-password-in-git](https://stackoverflow.com/questions/35942754/how-can-i-save-username-and-password-in-git)

```bash
git config --global credential.helper store
echo "https://${username}:${password_or_access_token}@github.com" > ~/.git-credentials
```
