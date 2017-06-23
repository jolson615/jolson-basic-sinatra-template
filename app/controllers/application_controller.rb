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
     unless @larry
        @larry = SnippetySnip.new()
     end
    
      unless @enemy
        @enemy = SnippetySnip.new()
      end
      
      @fightresults = @larry.crustacean_altercation(@enemy)
      puts "final results: " + @fightresults
      erb :fight
  end
  
  post '/finalpage' do
    @winorlose = params["winorlose"]
    erb :finalpage
  end
  
end