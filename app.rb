require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :session_secret, "Hello"


  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_1_name = $game.player_one.name
    @player_1_health = $game.player_one.health
    @player_2_name = $game.player_two.name
    @player_2_health = $game.player_two.health
    erb :play
  end

  post '/attacked_player_1' do
    $game.attack($game.player_two)
    $attacked = $game.player_one.name
    redirect '/confirm_hit'
  end

  post '/attacked_player_2' do
    $game.attack($game.player_one)
    $attacked = $game.player_two.name
    redirect '/confirm_hit'
  end

  get '/confirm_hit' do
    $game.switch
    @attacked = $attacked
    erb(:attacking)
  end

  get '/' do
    erb :index
  end


  #start the server if ruby file executed directly

  run! if app_file == $0
end
