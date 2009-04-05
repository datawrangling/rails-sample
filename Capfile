load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
load 'config/deploy'

after "deploy:update_code", :copy_over_config_files

task :touch_restart_file do
  run "for config_file in #{release_path}/config/*; do ln -nfs #{deploy_to}/#{shared_dir}/config/`basename $config_file` $config_file; done"
end
