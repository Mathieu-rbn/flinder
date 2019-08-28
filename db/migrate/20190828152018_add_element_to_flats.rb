class AddElementToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :elevator, :string
    add_column :flats, :furnished, :string
    add_column :flats, :photo, :string
  end
end
