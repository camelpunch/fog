package "git-core"
gem_package "bundler"

execute "install fog gems" do
  cwd "/vagrant"
  user "vagrant"
  group "vagrant"
  command "bundle install --path=/home/vagrant/.bundle"
end

execute "run fog test suite" do
  cwd "/vagrant"
  user "vagrant"
  group "vagrant"
  command "bundle exec rake"
end
