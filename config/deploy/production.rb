set :domain, "192.168.16.42"
set :user, "gschreiber"
server domain, :app, :web
role :db, domain, :primary => true