get '/signup' do
	#TODOL Create new user
end

get '/login' do
	#TODOL Allow login
end

get '/logout' do
	#TODOL Allow logout
end

get '/user/:id/stats' do
  @rounds_total = User.find(params[:id]).rounds.count
  erb :'user/show'
end

