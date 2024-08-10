# This model represents a budget category
class Category < ApplicationRecord
  belongs_to :section

  validates :name, uniqueness: true
end
