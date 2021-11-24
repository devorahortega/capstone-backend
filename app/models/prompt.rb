class Prompt < ApplicationRecord
  has_many :prompttag
  has_many :favorites
end
