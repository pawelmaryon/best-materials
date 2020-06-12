class CreateDriveways < ActiveRecord::Migration[6.0]
  def change
    create_table :driveways do |t|
      t.string :name
      t.string :type
      t.decimal :price
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
