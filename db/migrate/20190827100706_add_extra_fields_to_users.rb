class AddExtraFieldsToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_photo, :string
    add_column :users, :profession, :string
    add_column :users, :people_number, :integer
    add_column :users, :profile_description, :text
    add_column :users, :relationship_status, :integer
    add_column :users, :mobile, :string
    add_column :users, :bathroom, :integer
    add_column :users, :bedroom, :integer
    add_column :users, :property_type, :string
    add_column :users, :street, :string
    add_column :users, :district, :string
    add_column :users, :post_code, :string
    add_column :users, :city, :string
    add_column :users, :total_rent, :integer
    add_column :users, :garage, :integer
    add_column :users, :level_floor, :integer
    add_column :users, :floors_number, :integer
    add_column :users, :vacant_from, :string
    add_column :users, :square_meter, :integer
    add_column :users, :land, :integer
    add_column :users, :year_construction, :string
    add_column :users, :type_heating, :string
    add_column :users, :extras, :integer
    add_column :users, :radius, :integer

  end
end

