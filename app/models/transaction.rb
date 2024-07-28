# This model represents an account transaction
class Transaction < ApplicationRecord
  belongs_to :account

  scope :credit, -> { joins(:account).where(account: { credit: true }).sorted }
  scope :dinero, -> { joins(:account).where(account: { credit: false }).sorted }
  scope :sorted, -> { order(created_at: :desc) }

  def self.valid_scope?(scope)
    return false if scope.blank?

    send(:generated_relation_methods).instance_methods.include? scope.to_sym
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
