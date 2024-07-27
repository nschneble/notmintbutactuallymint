# Aspiration Spend & Save bank account
Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# Initial balance
Transaction.create_with(
  amount: 0,
  account: Account.s("Aspiration")
).find_or_create_by!(
  description: "Initial balance"
)
