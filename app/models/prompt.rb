class Prompt < ApplicationRecord
  has_many :prompttags
  has_many :favorites
  has_many :users, through: :favorites
end
