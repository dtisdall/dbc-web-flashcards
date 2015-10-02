class Round < ActiveRecord::Base
  belongs_to :user
  has_many :guesses
  belongs_to :deck

  def check_guess(params)
    #params = {card_id: "3", guess: "33"}
      card = Card.find(params[:card_id].to_i)
      answer = card.answer == params[:guess]
      Guess.create(round: self, card: card, correct: answer)
  end

end
