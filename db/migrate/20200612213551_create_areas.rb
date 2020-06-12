class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.decimal :length
      t.decimal :width
      t.decimal :depth
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
