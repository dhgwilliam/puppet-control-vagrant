desc "copy the pre-commit hook into place"
task :cp_hooks do
  root = %x{git rev-parse --show-toplevel}.chomp
  hooks = [
    'pre-commit'
  ]
  hooks.each do |hook|
    system "cp #{File.join(root,'scripts',hook)} #{File.join(root,'.git/hooks')}"
  end
end

task :default => :cp_hooks
