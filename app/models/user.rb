class User < ActiveRecord::Base
	has_many :rental_units, dependent: :destroy
end
