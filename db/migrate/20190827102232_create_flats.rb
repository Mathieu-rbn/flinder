class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.integer :bathroom
      t.integer :bedroom
      t.string :property_type
      t.string :street
      t.string :district
      t.string :post_code
      t.string :city
      t.integer :rent
      t.integer :rent_extra
      t.integer :total_rent
      t.integer :garage
      t.integer :level_floor
      t.integer :floors_number
      t.string :vacant_from
      t.integer :square_meter
      t.integer :land
      t.string :year_construction
      t.string :type_heating
      t.integer :extras
      t.integer :radius
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
