# This model represents a bank account or credit card
class Account < ApplicationRecord
  has_many :transactions, dependent: :destroy

  validates :name, :slug, uniqueness: true
  validates :credit, inclusion: [true, false]
  validates :limit, numericality: { greater_than: 0, allow_nil: true }
end
