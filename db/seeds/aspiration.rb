# Aspiration Spend & Save Bank Account
Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# Initial Balance
Transaction.create_with(
  amount: 0
).find_or_create_by!(
  description: "Initial Balance",
  account: Account.s("Aspiration")
)
