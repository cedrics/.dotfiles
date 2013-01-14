p() {
  cd ~/projects/$1
}

_p() {
  _files -W ~/projects -/;
}

compdef _p p
