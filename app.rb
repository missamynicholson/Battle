require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @Name_1 = params[:Name_1]
    @Name_2 = params[:Name_2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
