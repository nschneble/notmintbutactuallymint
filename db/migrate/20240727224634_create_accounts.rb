# This migration creates all of our tables and relationships
class CreateAccounts < ActiveRecord::Migration[7.1]
  def change # rubocop:disable Metrics/MethodLength
    create_table :accounts do |t|
      t.string :name, null: false, default: "Account"
      t.unique_constraint [:name]
      t.boolean :credit, null: false, default: false
      t.timestamps
    end

    create_table :transactions do |t|
      t.string :description, null: false, default: "Description"
      t.float :amount, null: false, default: 0
      t.belongs_to :account
      t.timestamps
    end
  end
end
