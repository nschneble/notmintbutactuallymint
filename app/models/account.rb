# This model represents a bank account or credit card
class Account < ApplicationRecord
  has_many :transactions, dependent: :destroy

  validates :name, uniqueness: true # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :credit, inclusion: [true, false]
end
