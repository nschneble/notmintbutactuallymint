# Chase Sapphire Reserve credit card
Account.create_with(
  slug: "chase-sapphire",
  credit: true,
  limit: 58_900.00
).find_or_create_by!(
  name: "Chase Sapphire Reserve"
)

# sample data
Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -2_980.33,
  description: "August Statement",
  category: Category.s("Statements"),
  account: Account.s("Chase Sapphire Reserve")
)
