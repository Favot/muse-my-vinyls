class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.string :title
      t.string :artist
      t.integer :price_per_day
      t.text :description
      t.string :condition
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
