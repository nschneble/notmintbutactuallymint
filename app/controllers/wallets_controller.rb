# This controller is responsible for managing wallets
class WalletsController < ApplicationController
  before_action :set_filter, only: %i[index]
  before_action :set_search, only: %i[index]
  before_action :set_select, only: %i[index]

  def index
    @pagy, @transactions = if @select.present?
                             index_transactions_for_account
                           else
                             index_all_transactions
                           end
  end

  private

  def index_transactions_for_account
    account = Account.where(slug: @select)
    return index_all_transactions unless account.any?

    if @filter.present?
      pagy(Transaction.where(account:).send(@filter.to_sym))
    elsif @search.present?
      pagy_searchkick(Transaction.pagy_search(@search, fields: [:description], where: { account_id: account.pluck(:id) }))
    else
      pagy(Transaction.where(account:).sorted)
    end
  end

  def index_all_transactions
    if @filter.present?
      pagy(Transaction.send(@filter.to_sym))
    elsif @search.present?
      pagy_searchkick(Transaction.pagy_search(@search, fields: [:description]))
    else
      pagy(Transaction.sorted)
    end
  end

  def set_filter
    @filter = params[:filter] if Transaction.valid_scope?(params[:filter])
  end

  def set_search
    @search = params[:search]
  end

  def set_select
    @select = params[:select] if Account.valid_slug?(params[:select])
  end
end
