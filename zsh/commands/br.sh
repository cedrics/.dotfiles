br() {
  if [ -e "Gemfile" ]; then
    bundle exec rake $*
  else
    rake $*
  fi
}
