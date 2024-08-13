# Aspiration Spend & Save bank account
aspiration = Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# sample data
Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: 5_000.00,
  description: "August Statement",
  category: Category.s("Statements"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -382.48,
  description: "Gateway Condo Fees",
  category: Category.s("Condo Fees"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -5.00,
  description: "Aspiration Pay What is Fair Fee",
  category: Category.s("Bank + Tax Services"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-02",
  post_date: "2024-08-02",
  amount: 1_535.57,
  description: "Transfer from Fidelity",
  category: Category.s("Transfers"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-06",
  post_date: "2024-08-06",
  amount: -259.00,
  description: "Bridgecrest Car Payment",
  category: Category.s("Car Payments"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-06",
  post_date: "2024-08-06",
  amount: -314.09,
  description: "Citi Loan Payment",
  category: Category.s("Legacy Debt + Loan Payments"),
  account: aspiration
)

Transaction.create!(
  date: "2024-08-09",
  amount: -575.00,
  description: "Central Cooling & Heating",
  category: Category.s("Cleaning + Other Home Services"),
  account: aspiration
)
