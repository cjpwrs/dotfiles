
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

ulimit -n 1024
