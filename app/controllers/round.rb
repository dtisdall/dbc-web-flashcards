# index: GET /rounds  (display a list of all rounds)

# new: GET /rounds/new (return an HTML form for creating a new round)

# create: POST  /rounds (create a new round)

# show: GET /rounds/1 (display a specific round)

# edit: GET /rounds/1/edit (return an HTML form for editing a round)

# update: PUT /rounds/1 (update a specific round)

# destroy: DELETE  /rounds/1 (delete a specific round)


post '/round' do
# params{new_round{user_id: 1, deck_id: 1}}
  deck = Deck.find(params[:new_round][:deck_id].to_i)
  user = User.find(params[:new_round][:user_id].to_i)
  round = Round.create(user: user, deck: deck)
  redirect "/round/#{round.id}/next_card"
end

get '/round/:id/next_card' do |id|
  @round = Round.find(id)
  @card = @round.next_card
  redirect "/round/#{@round.id}/stats" if @card.nil?
  erb :'round/show_card'
end

post '/round/:id/check_guess' do |id|
  @round = Round.find(id)
  correct = @round.check_guess(params).correct
  session[:prevous] = correct
  redirect "/round/#{@round.id}/next_card"
end



get '/round/:id/stats' do
	#Ignore authentication, everyone can see the stats for all rounds
  @round = Round.find(id)
end
