require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  STARTING_HP = 50

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:Name_1] = params[:Name_1]
    session[:Name_2] = params[:Name_2]
    session[:player_1_hp] = STARTING_HP
    session[:player_2_hp] = STARTING_HP
    redirect '/play'
  end

  get '/play' do
    @Name_1 = session[:Name_1]
    @Name_2 = session[:Name_2]
    @player_1_hp = session[:player_1_hp]
    @player_2_hp = session[:player_2_hp]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
