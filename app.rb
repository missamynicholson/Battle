require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(name:params[:name_1], hitpoints:50)
    $player_2 = Player.new(name:params[:name_2], hitpoints:50)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @game = Game.new
    @game.attack(@player_2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
