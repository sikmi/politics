# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

set :branch, 'master'
set :unicorn_pid, "/var/apps/shared/tmp/pids/unicorn.pid"
role :app, %w{153.120.40.197}
#role :web, %w{gakken}
#role :db,  %w{gakken}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

#server 'gakken', user: 'apps', roles: %w{app}, my_property: 1

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#set :ssh_options, {
#  user: 'apps',
#  keys: File.join(Dir.pwd,"deploy/ssh/id_rsa").to_s,
#  forward_agent: false,
#  auth_methods: %w(publickey)
#}

# And/or per server (overrides global)
# ------------------------------------
server '153.120.40.197',
  user: 'apps',
  roles: %w{app},
  ssh_options: {
    user: 'apps', # overrides user setting above
    keys: File.join(Dir.pwd,"config/deploy/ssh/id_rsa").to_s,
    forward_agent: false,
    auth_methods: %w(publickey)
    # password: 'please use keys'
  }
