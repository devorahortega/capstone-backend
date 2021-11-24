class Prompt < ApplicationRecord
  has_many :prompttag
  has_may :favorites
end
