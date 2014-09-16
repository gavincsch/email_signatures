set :domain, "197.85.191.36"
set :user, "root"
server domain, :app, :web
role :db, domain, :primary => true