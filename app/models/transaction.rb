# This model represents an account transaction
class Transaction < ApplicationRecord
  belongs_to :account
end
