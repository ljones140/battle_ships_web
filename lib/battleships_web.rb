require 'sinatra/base'



class BattleshipsWeb < Sinatra::Base

  attr_reader :playername

  enable :sessions

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/newgame' do
    erb :newgame
  end

  get '/game' do
    session[:playername] = params[:playername]
    @playername = session[:playername]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
