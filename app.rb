require "sinatra"


get '/' do
	erb :home
end

post '/player_one' do
	player_one_first_name = params[:fname]
	player_one_last_name = params[:lname]
	player_one_game_name = params[:gname]
	redirect 'result?fname=' + player_one_first_name + '&lname=' + player_one_last_name + '&gname=' + player_one_game_name
end

get '/result' do
	player_one_first_name = params[:fname]
	player_one_last_name = params[:lname]
	player_one_game_name = params[:gname]
	erb :result, :locals => {:fname => player_one_first_name, :lname => player_one_last_name, :gname => player_one_game_name}
end







