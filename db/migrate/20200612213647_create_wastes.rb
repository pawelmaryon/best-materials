class CreateWastes < ActiveRecord::Migration[6.0]
  def change
    create_table :wastes do |t|
      t.string :name
      t.decimal :weight
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
