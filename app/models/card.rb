class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses, through: :deck, source: :rounds
end
