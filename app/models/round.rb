class Round < ActiveRecord::Base
  belongs_to :user
  has_many :guesses
  belongs_to :deck

  def next_card
    correctly_guessed_cards = self.guesses.where(correct: true).map{|guess| guess.card}
    all_cards = self.deck.cards
    cards_without_correct_answers = all_cards - correctly_guessed_cards
    cards_without_correct_answers.sample
  end
end
