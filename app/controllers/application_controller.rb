require './config/environment'
require './app/models/sample_model'


class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/pageone' do
    erb :pageone
  end

   post '/fight' do
      larry = SnippetySnip.new()
      enemy = SnippetySnip.new("Shelldon")
      larry.crustacean_altercation(enemy)
      @fightlogarray = SnippetySnip.fightlog
      @x = 0
      erb :fight
  end

  post '/finalpage' do
    @winorlose = params["winorlose"]
    erb :finalpage
  end

end
