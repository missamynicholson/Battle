require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
  	$player1 = Player.new(params[:Name_1])
  	$player2 = Player.new(params[:Name_2])
  	redirect('/play')
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    Game.new.attack($player2)
    @hp_1 = $player1.hp
    @hp_2 = $player2.hp
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
