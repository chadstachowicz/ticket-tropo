class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.integer :submitted_by_user_id
      t.integer :assigned_to_user_id
      t.string :reported_by
      t.string :spark_room_id
      t.string :contact_info_phone
      t.string :contact_info_email
      t.text :notes

      t.timestamps null: false
    end
  end
end
