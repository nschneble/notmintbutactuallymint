# This migration creates all of our tables and relationships
class CreateAccounts < ActiveRecord::Migration[7.1]
  def change # rubocop:disable Metrics
    create_table :sections do |t|
      t.string :name, null: false, default: ""
      t.string :color, null: false, default: ""
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name, null: false, default: ""
      t.belongs_to :section, index: true, foreign_key: true
      t.timestamps
    end

    create_table :accounts do |t|
      t.string :name, null: false, default: ""
      t.boolean :credit, null: false, default: false
      t.float :limit
      t.timestamps
    end

    create_table :transactions do |t|
      t.date :date, null: false, default: Time.zone.today
      t.date :post_date
      t.string :description, null: false, default: ""
      t.float :amount, null: false, default: 0
      t.belongs_to :account, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
      t.timestamps
    end

    create_table :wallets, &:timestamps
    create_table :budgets, &:timestamps

    add_index :sections, :name, unique: true
    add_index :categories, :name, unique: true
    add_index :accounts, :name, unique: true
  end
end
