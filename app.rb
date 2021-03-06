require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
      register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do
    # session[:player1_attacked] = false
    erb(:index)
  end

  post '/names' do
    $player_name_1 = Player.new(params[:player_name_1])
    $player_name_2 = Player.new(params[:player_name_2])
    redirect('/play')
  end

  get '/play' do
    # @player_1_attacked = session[:player1_attacked]
    # @player_name_one = $player_name_1.name
    # @player_name_two = $player_name_2.name
    # @player_name_two_HP = $player_name_2.HP
    @player_name_one = $player_name_1   #Here we have all the attributes of each player
    @player_name_two = $player_name_2   #Here we have all the attributes of each player
    erb(:play)
  end

  post '/attack' do
    # @player_name_one = $player_name_1.name
    # @player_name_two = $player_name_2.name
    @player_name_one = $player_name_1
    @player_name_two = $player_name_2
    @player_name_one.attack(@player_name_two)  # Here we attack player 2
    # session[:player1_attacked] = true
    erb(:attackplayer2)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0   
  
end
