get '/decks/index' do
	@decks = Deck.all
	erb :'deck/index'
end
