function p
  cd ~/projects/$argv
end

complete -c p -w "ls ~/projects/"
