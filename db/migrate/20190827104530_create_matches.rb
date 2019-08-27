class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :asker, foreign_key: {to_table: :flats}
      t.references :receiver, foreign_key: {to_table: :flats}

      t.timestamps
    end
  end
end
