require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $rps_input = params[:RPS_input]
    player_1 = params[:name]
    @game = Game.create(player_1,"Computer")
    redirect '/game'
  end

  get '/game' do
    @RPS_input = $rps_input
    @game = Game.instance
    erb :game
  end

  post '/action' do
    $rps_input = params[:RPS_input]
    redirect '/game'
  end

end
# rackup -p 4567  NOT SHOTGUN!!!
