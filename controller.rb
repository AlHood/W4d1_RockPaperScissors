require "sinatra"
require "sinatra/contrib/all"
require_relative('./models/game')
require_relative('./models/player')

get "/game/" do
  "rules page"
end

get "/game/:play1/:play2/" do
game = Game.new(params[:play1], params[:play2])

@final = game.play
erb (:result)
end







