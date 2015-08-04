require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'cell'
require_relative 'board'



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
    playername = session[:playername]
    @code = "<h2 name=\"playername\">Player 1: #{playername}</h2>" if playername.length > 0
    player1 = Player.new playername
    player2 = Player.new "computer"
    board1 = Board.new({ size: 10, cell: Cell, number_of_pieces: 5 })
    board2 = Board.new({ size: 10, cell: Cell, number_of_pieces: 5 })
    player1.board = board1
    player2.board = board2
    $game = Game.new(player1, player2)
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
