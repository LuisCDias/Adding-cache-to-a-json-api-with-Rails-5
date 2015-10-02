class CreateRentalUnits < ActiveRecord::Migration
  def change
    create_table :rental_units do |t|
      t.string :address
      t.integer :rooms
      t.integer :bathrooms
      t.integer :price_cents
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
