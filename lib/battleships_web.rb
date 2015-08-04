require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello BattleshipsWeb!'
    erb :index
  end

  get '/newgame' do
    "New Game"
    erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
