post '/round' do
	#This is supposed to start a new round, will post a hash params{new_round{user_id: 1, deck_id: 1}}
  p params.to_s
end

get 'round/:id/stats' do
	#Ignore authentication, everyone can see the stats for all rounds
end