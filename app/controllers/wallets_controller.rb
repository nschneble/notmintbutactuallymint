# This controller is responsible for managing wallets
class WalletsController < ApplicationController
  before_action :set_filter, only: %i[index]
  before_action :set_search, only: %i[index]

  def index
    @transactions = if @filter.present?
                      Transaction.send(@filter.to_sym)
                    elsif @search.present?
                      Transaction.where("description ILIKE ?", "%#{@search}%").sorted
                    else
                      Transaction.sorted
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
