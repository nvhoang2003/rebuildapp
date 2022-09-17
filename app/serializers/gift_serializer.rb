class GiftSerializer < ActiveModel::Serializer
  attributes :name, :score, :stock
  # has_many :readergifts
end
