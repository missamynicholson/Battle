require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(player_1: Player.new(name:params[:name_1], hitpoints:50), player_2:
            Player.new(name:params[:name_2], hitpoints:50))
    redirect '/play'
  end

  get '/switch' do
    @game.switch_roles
    erb(:play)
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
