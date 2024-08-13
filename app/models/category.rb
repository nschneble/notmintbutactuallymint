# This model represents a budget category
class Category < ApplicationRecord
  belongs_to :section
  has_many :transactions, dependent: :destroy

  validates :name, uniqueness: true

  def parent
    if none?
      name
    else
      section.name
    end
  end

  def color
    section.color.to_sym
  end

  def self.none
    Category.s(I18n.t("categories.none"))
  end

  def none?
    section.name.eql?(I18n.t("sections.none"))
  end
end
