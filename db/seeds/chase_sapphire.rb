# Chase Sapphire Reserve Credit Card
Account.create_with(
  credit: true,
  limit: 58_900.00
).find_or_create_by!(
  name: "Chase Sapphire Reserve"
)

# Initial Balance
Transaction.create_with(
  amount: 0
).find_or_create_by!(
  description: "Initial Balance",
  account: Account.s("Chase Sapphire Reserve")
)
