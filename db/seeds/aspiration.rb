# Aspiration Spend & Save bank account
Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# Initial balance
Transaction.create_with(
  amount: 0
).find_or_create_by!(
  description: "Initial balance",
  account: Account.s("Aspiration")
)
