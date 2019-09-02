class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :flat_photos, :data, :photo
  end
end
