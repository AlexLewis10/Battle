require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :session_secret, "Hello"


  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_1_health = $player_1.health
    @player_2_name = $player_2.name
    @player_2_health = $player_2.health
    erb :play
  end

  post '/attacked_player_2' do
    $player_1.take_damage
    $attacked = $player_2.name
    redirect '/confirm_hit'
  end

  get '/confirm_hit' do
    @attacked = $attacked
    erb(:attacking)
  end

  post '/attacked_player_1' do
    $player_2.take_damage
    $attacked = $player_1.name
    redirect '/confirm_hit'
  end

  get '/' do
    erb :index
  end


  #start the server if ruby file executed directly

  run! if app_file == $0
end
