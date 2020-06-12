class CreateTradesmen < ActiveRecord::Migration[6.0]
  def change
    create_table :tradesmen do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :email
      t.integer :contact_number
      t.integer :rating
      t.string :address
      t.references :estimate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
