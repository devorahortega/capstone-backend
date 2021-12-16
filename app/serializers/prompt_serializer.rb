class PromptSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  # has_many :prompttags
  has_many :favorites
  has_many :users, through: :favorites
end
