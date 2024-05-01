PROMPT_COMMAND='PS1=\
 `if test "$UID" = 0 ; then \
        echo "\033[37;43;1;1m[\h]\033[0m\w # " ; \
  else \
        echo "\033[34;47;1;7m[\u@\h]\033[0m\w > " ; \
  fi `'
export PROMPT_COMMAND
