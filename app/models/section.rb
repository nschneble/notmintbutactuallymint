# This model represents a budget section
class Section < ApplicationRecord
  has_many :categories, dependent: :destroy

  validates :name, uniqueness: true
  validates :color, inclusion: %w[slate gray zinc neutral stone red orange amber yellow lime green emerald teal cyan sky blue indigo violet
                                  purple fuchsia pink rose]
end
