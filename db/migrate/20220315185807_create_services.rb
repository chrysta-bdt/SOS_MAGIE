class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.text :description
      t.decimal :price
      t.references :witch, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
