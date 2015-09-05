set :stage, :production
server '5.101.101.123', user: 'deploy', roles: %w{web app db}
