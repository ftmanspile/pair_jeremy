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

post '/player_two' do
	player_one_first_name = params[:fname]
	player_one_last_name = params[:lname]
	player_one_game_name = params[:gname]
	player_two_first_name = params[:fname2]
	player_two_last_name = params[:lname2]
	player_two_game_name = params[:gname2]
	redirect 'final?fname=' + player_one_first_name + '&lname=' + player_one_last_name + '&gname=' + player_one_game_name + '&fname2=' + player_two_first_name + '&lname2=' + player_two_last_name + '&gname2=' + player_two_game_name
end

get '/final' do
	player_one_first_name = params[:fname]
	player_one_last_name = params[:lname]
	player_one_game_name = params[:gname]
	player_two_first_name = params[:fname2]
	player_two_last_name = params[:lname2]
	player_two_game_name = params[:gname2]
	erb :final, :locals => {:fname => player_one_first_name, :lname => player_one_last_name, :gname => player_one_game_name, :fname2 => player_two_first_name, :lname2 => player_two_last_name, :gname2 => player_two_game_name}
end

post '/last' do
	player_one_first_name = params[:fname]
	player_one_last_name = params[:lname]
	player_one_game_name = params[:gname]
	player_two_first_name = params[:fname2]
	player_two_last_name = params[:lname2]
	player_two_game_name = params[:gname2]
end








