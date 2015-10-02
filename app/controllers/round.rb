

post '/round' do
# params{new_round{user_id: 1, deck_id: 1}}
  session[:prevous] = nil
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



get '/round/:id/stats' do |id|
  @round = Round.find(id)
   erb :'round/stats'
end
