class CollectableSerializer < ActiveModel::Serializer
  attributes :id, :name, :likes, :for_sale, :image
  has_one :user
  has_one :collection
end
