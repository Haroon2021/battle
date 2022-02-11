require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
      register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do
    session[:player1_attacked] = false
    erb(:index)
  end

  post '/names' do
    session[:player_name_1] = params[:player_name_1]
    session[:player_name_2] = params[:player_name_2]
    redirect('/play')
  end

  get '/play' do
    @player_1_attacked = session[:player1_attacked]
    @player_name_one = session[:player_name_1] 
    @player_name_two = session[:player_name_2] 
    erb(:play)
  end

  post '/attack' do
    # something needs to happen here
    # session[:player1_attacked] = true
    erb(:attackplayer2)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0   
  
end
