# This model represents a bank account or credit card
class Account < ApplicationRecord
  has_many :transactions, dependent: :destroy

  validates :name, :slug, uniqueness: true
  validates :credit, inclusion: [true, false]
  validates :limit, numericality: { greater_than: 0, allow_nil: true }

  scope :sorted, -> { order(name: :asc) }

  def self.valid_slug?(slug)
    return false if slug.blank?

    Account.where(slug:).any?
  end

  def self.name_from_slug(slug)
    return unless valid_slug?(slug)

    Account.find_by(slug:).name
  end

  def self.all_accounts_placeholder
    Account.new(
      name: I18n.t("home.select.all"),
      slug: "all",
      credit: false
    )
  end
end
