class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :body
      t.integer :end_user_id
      t.belongs_to :assignable, polymorphic: true

      t.timestamps
    end
    add_index :tickets, [:assignable_id,:assignable_type]
  end
end
