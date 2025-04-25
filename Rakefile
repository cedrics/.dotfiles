require 'fileutils'

HOME_COFIG = %w[vim vimrc gvimrc gitconfig githubconfig gitcommands gitignore zshrc].freeze
XDG_CONFIG = %w[nvim kitty].freeze

def ln_sym(old, target)
  FileUtils.ln_s(old, target) unless File.exist?(target) || File.symlink?(target)
end

def relative_path(path)
  File.expand_path(File.join('../', path), __FILE__)
end

desc 'Creates all sym-links'
task :setup do
  sym_links = {}

  HOME_COFIG.each do |path|
    sym_links[relative_path(path)] = relative_path("../.#{path}")
  end

  XDG_CONFIG.each do |path|
    sym_links[relative_path(path)] = relative_path("../.config/#{path}")
  end

  FileUtils.mkdir_p(relative_path('../.config'))

  sym_links.each(&method(:ln_sym))
end

task default: [:setup]
