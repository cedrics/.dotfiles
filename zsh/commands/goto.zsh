goto() {
  cd $GOPATH/src/github.com/$1
}

_goto() {
  _files -W $GOPATH/src/github.com -/;
}

compdef _goto goto
