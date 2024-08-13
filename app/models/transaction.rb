# This model represents an account transaction
class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :category

  validates :description, :date, presence: true
  validates :amount, numericality: true
  validates :post_date, comparison: { greater_than_or_equal_to: :date, allow_nil: true }

  extend Pagy::Searchkick

  searchkick

  scope :credit, -> { joins(:account).where(account: { credit: true }).sorted }
  scope :dinero, -> { joins(:account).where(account: { credit: false }).sorted }
  scope :sorted, -> { order(date: :desc, description: :asc) }

  scope :pending, -> { where(post_date: nil) }

  def self.valid_scope?(scope)
    return false if scope.blank?

    send(:generated_relation_methods).instance_methods.include? scope.to_sym
  end

  def pending?
    post_date.nil?
  end

  def uncategorized?
    category.none?
  end

  # Searchkick guidance
  # https://gist.github.com/JasonTrue/3cd6a7094e23cd72bfb870604521f415#indexing
  def search_data
    {
      description:,
      amount:
    }
  end

  def self.empty
    Transaction.new(
      description: I18n.t("empty.message"),
      account: Account.new(
        name: I18n.t("empty.suggestion")
      )
    )
  end

  def empty?
    description.eql?(I18n.t("empty.message")) && account.name.eql?(I18n.t("empty.suggestion"))
  end
end
