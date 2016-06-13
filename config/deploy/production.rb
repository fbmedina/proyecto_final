set :stage, :production
set :rails_env, :production

server 'ec2-184-72-95-10.compute-1.amazonaws.com', user: 'ubuntu', roles: %w{web app db}, port: 443, primary: true