## Random scraps of scripts, etc.

Change Git repositories from using `https` to using `ssh`.  

```bash
find . -iname "config" -exec sed -i '' 's|https://github.com/|git@github.com:|g' {} \;
```

(If you establish key-pairs properly, with `ssh` you don't need to enter a user/pass to `push` updates.)



