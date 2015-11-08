ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

  enable :session
  set :session_secret, 'Super secret!'

  get '/' do
    erb :'index'
  end

end
