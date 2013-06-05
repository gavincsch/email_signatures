set :domain, "wsrv003"
set :user, "gschreiber"
server domain, :app, :web
role :db, domain, :primary => true