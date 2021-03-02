class CreateRentings < ActiveRecord::Migration[6.0]
  def change
    create_table :rentings do |t|
      t.date :start_date
      t.date :end_date
      t.string :status , default: "Pending"
      t.integer :total_price
      t.references :renter, null: false, foreign_key: { to_table: :users }
      t.references :vinyl, null: false, foreign_key: true

      t.timestamps
    end
  end
end
