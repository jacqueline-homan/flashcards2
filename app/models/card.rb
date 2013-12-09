class Card < ActiveRecord::Base
  belongs_to :deck # deck, deck=
  attr_accessible :back, :front
end
