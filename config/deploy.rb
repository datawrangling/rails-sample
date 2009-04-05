set :application, "sample"
set :deploy_to, "/data/apps/#{application}"

set :scm, :git
set :repository,  "git://github.com/probablycorey/rails-sample.git"

set :user, "mr_app"
set :use_sudo, false

server "PUBLIC-DNS-OF-YOUR-EC2-INSTANCE", :app, :web, :db, :primary => true
