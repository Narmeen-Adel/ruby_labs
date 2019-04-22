class ItemSerializer < ActiveModel::Serializer
  attributes :item_name, :description
  def item_name
    object.name
  end
end
