require 'sinatra/activerecord/rake'
require_relative './config'

# Use the following to control with environment is set
# RACK_ENV=test rake db:create
desc "create the database"
task "db:create" do
  puts "Creating file #{DB_PATH} if it doesn't exist..."
  touch DB_PATH
end