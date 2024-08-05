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
    sum = transactions.sum { |transaction| transaction.amount.abs }
    I18n.t("transactions.pending").sub("{{amount}}", format_transaction_amount(sum))
  end
end
