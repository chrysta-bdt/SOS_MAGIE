class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :rental_date
      t.date :return_date
      t.references :patient, null: false, foreign_key: { to_table: :users }
      t.references :service, null: false, foreign_key: true
      t.timestamps
    end
  end
end
