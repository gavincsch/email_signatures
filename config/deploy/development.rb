set :domain, "192.168.9.32"

set :user, "root"
server domain, :app, :web
role :db, domain, :primary => true