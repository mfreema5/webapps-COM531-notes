## Random scraps of scripts, etc.

Change Git repositories from using `https` to using `ssh`.  

```bash
find . -iname "config" -exec sed -i '' 's|https://github.com/|git@github.com:|g' {} \;
```

(If you establish key-pairs properly, with `ssh` you don't need to enter a user/pass to `push` updates.)

----

One-liner to display rolling output of commands entered.

`while true ; do ; if [ "$(sha1sum ~/.zsh_history)" != "${zsh_sum}" ] ; then ; tail -n1 ~/.zsh_history | cut -d\; -f 2- ; fi ; zsh_sum=$(sha1sum ~/.zsh_history) ; sleep 3 ; done`

As a shell script:

```bash
while true
do 
  if [ "$(sha1sum ~/.zsh_history)" != "${zsh_sum}" ] ; then 
    tail -n1 ~/.zsh_history | cut -d\; -f 2-
  fi
  zsh_sum=$(sha1sum ~/.zsh_history)
  sleep 3
done
```

----






