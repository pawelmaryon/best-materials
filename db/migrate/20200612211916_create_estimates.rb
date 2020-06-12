class CreateEstimates < ActiveRecord::Migration[6.0]
  def change
    create_table :estimates do |t|
      t.datetime :date
      t.decimal :full_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
