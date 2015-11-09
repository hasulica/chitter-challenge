ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

  enable :sessions
  set :session_secret, 'Super secret!'

  get '/' do
    erb :'/index'
  end

  get '/users/new' do
    erb :'/users/new'
  end

  get '/users/log-in' do
    erb :'/users/log-in'
  end

  post '/users' do
    @user = User.create(name: params['name'],
                        password: params['password'],
                        password_confirmation: params['password_confirmation'],
                        email: params['email'])
    session[:user_id] = @user.id
    redirect('/')
  end

  helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end
  end

end
