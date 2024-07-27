# This migration creates all of our tables and relationships
class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false, default: "Account"
      t.unique_constraint [:name]
      t.boolean :credit, null: false, default: false
      t.timestamps
    end
  end
end
