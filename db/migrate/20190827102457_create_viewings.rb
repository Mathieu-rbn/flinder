class CreateViewings < ActiveRecord::Migration[5.2]
  def change
    create_table :viewings do |t|
      t.boolean :like
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
