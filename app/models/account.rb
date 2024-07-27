# This model represents a bank account or credit card
class Account < ApplicationRecord
  has_many :transactions, dependent: :destroy
end
