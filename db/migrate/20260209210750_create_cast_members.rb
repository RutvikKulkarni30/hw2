class CreateCastMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :cast_members do |t|
      t.references :movie, foreign_key: true
      t.references :actor, foreign_key: true
      t.string :character_name
      t.integer :billing_order

      t.timestamps
    end
  end
end
