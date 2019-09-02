class ChangeFlatPhotosToPhotos < ActiveRecord::Migration[5.2]
  def change
    rename_table :flat_photos, :photos
  end
end
