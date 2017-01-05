require 'sinatra/base'
require_relative 'app/models/user'

class WebAPI < Sinatra::Base
  get '/' do
    'Hello WebAPI!'
  end

  get '/users' do
    @user = User.all
    erb :'app/views/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
