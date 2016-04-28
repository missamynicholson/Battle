require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(player_1: Player.new(name:params[:name_1], hitpoints:50), player_2:
            Player.new(name:params[:name_2], hitpoints:50))
    redirect '/play'
  end

  get '/switch' do
    @game = $game
    @game.switch_roles
    erb(:play)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    $game.attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
