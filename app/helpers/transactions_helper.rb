# Helper methods for transactions
module TransactionsHelper
  def transaction_amount_classes(transaction)
    if transaction.amount.positive?
      "text-green-700"
    elsif transaction.amount.negative?
      "text-red-700"
    else
      "text-gray-700"
    end
  end

  def format_transaction_amount(amount)
    number_to_currency(amount, unit: "$")
  end

  def format_pending_transactions_sum(transactions)
    I18n.t("transactions.pending").sub("{{amount}}", format_transaction_amount(transactions.sum(:amount)))
  end
end
