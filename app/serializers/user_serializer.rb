class UserSerializer < ActiveModel::Serializer
  attributes :id :favorites

  has_many :prompts, through: :favorites
end
