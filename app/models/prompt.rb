class Prompt < ApplicationRecord
  has_many :prompttag
  has_many :favorites
  has_many :users through :favorites
end
