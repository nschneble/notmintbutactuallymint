# Chase Sapphire Reserve credit card
Account.create_with(
  credit: true
).find_or_create_by!(
  name: "Chase Sapphire Reserve"
)

# Initial balance
Transaction.create_with(
  amount: 0,
  account: Account.s("Chase Sapphire Reserve")
).find_or_create_by!(
  description: "Initial balance"
)
