require 'sinatra/base'
require './lib/game'
require './lib/person'

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
    @game = Game.instance
    if @game.player_1.points == 2 || @game.player_2.points == 2
      redirect '/winner'
    else
      redirect '/game'
    end
  end

  get '/winner' do
    @game = Game.instance
    erb :winner
  end

end
# rackup -p 4567  NOT SHOTGUN!!!
