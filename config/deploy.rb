#default_run_options[:pty] = true
set :application, 'capistrano'
set :repo_url, 'git@github.com:dunkamihiran/capistrano.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
 set :scm, :git
 set :scm_passphrase, "dinuka123" 
 set :deploy_to, '/var/www'
 
 set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true

 set :scm_passphrase, ""
 set :user, "dinuka"
 set :rails_env, "production"
 set :branch, 'master'
  
 set :deploy_via, :remote_cache
 set :ssh_options, { :forward_agent => true }
  
  set :stages, %w(production staging)
set :default_stage, "production" 

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end