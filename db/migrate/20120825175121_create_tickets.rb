class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :body
      t.integer :end_user_id
      t.belongs_to :assigned_to, polymorphic: true

      t.timestamps
    end
    add_index :tickets, [:assigned_to_id,:assigned_to_type]
  end
end
