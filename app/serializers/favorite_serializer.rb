class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :prompt_id, :user_id

  belongs_to :user
  belongs_to :prompt
end
