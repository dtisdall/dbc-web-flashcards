user = User.create(username: 'david', password: 'password', display_name: 'David Tisdall')

deck = Deck.create(name: 'Ruby Deck')

deck.cards << Card.create(question: 'Is enumerable love?', answer: 'yes')
deck.cards << Card.create(question: 'What is ruby?', answer: 'language')
deck.cards << Card.create(question: 'What is the Vso of a Cessna 172 in knots', answer: '33')

round = Round.create(user: user, deck: deck)

Guess.create(card: Card.find(1), round: round, correct: false)
Guess.create(card: Card.find(2), round: round, correct: false)
Guess.create(card: Card.find(3), round: round, correct: false)