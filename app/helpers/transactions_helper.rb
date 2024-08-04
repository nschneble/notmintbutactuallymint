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

  def format_transaction_amount(transaction)
    number_to_currency(transaction.amount, unit: "$")
  end
end
