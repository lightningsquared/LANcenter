class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.integer :attendance_status, default: 0
      t.datetime :checked_in_at
      t.references :event, index: true
      t.string :student_status
      t.boolean :newsletter_opt_in

      t.timestamps null: false
    end
    add_foreign_key :guests, :events
  end
end
