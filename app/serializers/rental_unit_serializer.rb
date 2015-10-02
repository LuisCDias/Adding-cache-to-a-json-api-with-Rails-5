class RentalUnitSerializer < ActiveModel::Serializer
	cache key: 'rental_unit'
	attributes :id, :address, :rooms, :bathrooms, :price, :price_per_room
  	belongs_to :user
end
