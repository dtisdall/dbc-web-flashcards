# index: GET /rounds  (display a list of all rounds)

# new: GET /rounds/new (return an HTML form for creating a new round)

# create: POST  /rounds (create a new round)

# show: GET /rounds/1 (display a specific round)

# edit: GET /rounds/1/edit (return an HTML form for editing a round)

# update: PUT /rounds/1 (update a specific round)

# destroy: DELETE  /rounds/1 (delete a specific round)


post '/round' do
	#This is supposed to start a new round, will post a hash params{new_round{user_id: 1, deck_id: 1}}
  p params.to_s
end

get 'round/:id/stats' do
	#Ignore authentication, everyone can see the stats for all rounds
end
