set :application, "sample"

set :scm, :git
set :repository,  "git://github.com/datawrangling/rails-sample.git"
set :repository_cache, "git_cache"
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }

set :user, "mr_app"
set :use_sudo, false

server "PUBLIC-DNS-OF-YOUR-EC2-INSTANCE", :app, :web, :db, :primary => true
set :deploy_to, "/data/apps/#{application}"
