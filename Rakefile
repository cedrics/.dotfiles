require 'fileutils'

def ln_sym(old, target)
  unless File.exist?(target) || File.symlink?(target)
    FileUtils.ln_s(old, target)
  end
end

def relative_file(path)
  File.expand_path(File.join("../", path), __FILE__)
end

desc 'Creates all sym-links'
task :setup do
  %w{vim vimrc gvimrc oh-my-zsh zshrc tmux.conf gitconfig githubconfig}.each do |file|
    ln_sym(relative_file(file),  relative_file("../.#{file}"))
  end

  ln_sym(relative_file('bin'), relative_file('../bin'))
end

task :default => [:setup]
