require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
  	session[:Name_1] = params[:Name_1]
  	session[:Name_2] = params[:Name_2]
  	redirect('/play')
  end

  get '/play' do
    @name1 = session[:Name_1]
    @name2 = session[:Name_2]
    erb(:play)
  end

  get '/attack' do
    @name1 = session[:Name_1]
    @name2 = session[:Name_2]
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
