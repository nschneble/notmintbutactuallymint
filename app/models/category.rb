# This model represents a budget category
class Category < ApplicationRecord
  belongs_to :section
  has_many :transactions, dependent: :destroy

  validates :name, uniqueness: true
end
