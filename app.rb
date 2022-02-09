require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end 

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_name_one = params[:player_name_1]
    @player_name_two = params[:player_name_2]
    erb(:play)
  end
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0   
  
end