user = 'arturs'
domain = 'depot.localhost'
# adjust if you are using RVM, remove if you are not
set :rvm_type, :system
set :rvm_ruby_string, 'ruby-2.5.1/'
# file paths
set :application, 'depot'
set :repo_url, "#{user}@#{domain}:git/#{fetch(:application)}.git"
set :deploy_to, "/home/#{user}/deploy/#{fetch(:application)}"
# distribute your applications across servers (the instructions below put them
# all on the same server, defined above as 'domain', adjust as necessary)
role :app, domain
role :web, domain
role :db, domain

# set :default_environment, {
# 'PATH' => '<your paths>:/usr/local/bin:/usr/bin:/bin',
#'GEM_PATH' => '<your paths>:/usr/lib/ruby/gems/1.8'
# }
# See https://rvm.io/deployment/capistrano#environment for more info.