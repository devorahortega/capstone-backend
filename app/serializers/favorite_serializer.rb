class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :prompt_id

  has_many :prompts
end
