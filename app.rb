require "sinatra"

@player1, @player2 = nil, nil

get '/' do
  "Hello "
end

get '/secret'do
  "secret"
end

get '/new_route'do
  "new route
  this is a second line
  ..............."

end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:named_form)
end

post '/named-cat' do
  puts params
  @name = params[:cat_name]
  erb(:named_form)
end

get '/player-naming' do
  erb(:player_naming)
end

post '/game-begin' do
  @player1, @player2 = params[:p1], params[:p2]
  erb(:game_begin)
end
