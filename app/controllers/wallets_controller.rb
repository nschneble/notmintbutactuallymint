# This controller is responsible for managing wallets
class WalletsController < ApplicationController
  before_action :set_filter, only: %i[index]
  before_action :set_search, only: %i[index]

  def index
    @pagy, @transactions = if @filter.present?
                             pagy(Transaction.send(@filter.to_sym))
                           elsif @search.present?
                             pagy_searchkick(Transaction.pagy_search(@search))
                           else
                             pagy(Transaction.sorted)
                           end
  end

  private

  def set_filter
    @filter = params[:filter] if Transaction.valid_scope?(params[:filter])
  end

  def set_search
    @search = params[:search].presence
  end
end
