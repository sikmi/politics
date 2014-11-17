#RAILS_ROOT = File.expand_path("../../..", __FILE__)

environment   = 'production'
app_path      = "/var/apps"
rails_path    = "#{app_path}/current"
pid_path      = "#{app_path}/shared/tmp/pids"
sock_path     = "#{rails_path}/tmp"

FileUtils.mkdir_p(pid_path) unless FileTest.exist?(pid_path)
FileUtils.mkdir_p(sock_path) unless FileTest.exist?(sock_path)

worker_processes 3

listen  "#{sock_path}/unicorn.sock"
pid     "#{pid_path}/unicorn.pid"

# 60 seconds (the default)
timeout 30

# By default, the Unicorn Logger will write to stderr.
stderr_path "#{rails_path}/log/unicorn.log"
stdout_path "#{rails_path}/log/unicorn.log"

preload_app true
# check_client_connection false

before_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  old_pid = "#{pid_path}/unicorn.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end


# use correct Gemfile on restarts
#before_exec do |server|
#  ENV['BUNDLE_GEMFILE'] = "#{app_path}/current/Gemfile"
#end
