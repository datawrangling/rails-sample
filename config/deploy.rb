set :application, "sample"
set :deploy_to, "/data/apps/#{application}"

set :scm, :git
set :repository,  "git://github.com/probablycorey/rails-sample.git"

set :user, "mr_app"
set :use_sudo, false

server "ec2-174-129-222-40.compute-1.amazonaws.com", :app, :web, :db, :primary => true
