require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base

  enable :sessions

  # This is a sinatra filter (@game is used in every route)
  before do
    @game = Game.instance
  end

  get '/' do
    erb :select_mode
  end

  get '/select' do
    @mode = params[:mode]
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2, Attack)
    redirect '/play'
  end

  get '/play' do
    redirect '/attack' if @game.current_player.name == "Computer"
    erb :play
  end

  get '/attack' do
    type_of_attack = params[:which button]
    @game.attack("default")
    @game.switcher
    redirect '/game_over' if @game.game_over?
    erb :attack
  end

  get '/unparalyse' do
    @game.current_player.unparalyse
    erb :play
  end

  get '/sleep' do
    erb :sleep
  end

  get '/paralyse' do
    erb :paralyse
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
