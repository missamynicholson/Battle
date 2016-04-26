require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:Name_1] = params[:Name_1]
    session[:Name_2] = params[:Name_2]
    redirect '/play'
  end

  get '/play' do
    @Name_1 = session[:Name_1]
    @Name_2 = session[:Name_2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
