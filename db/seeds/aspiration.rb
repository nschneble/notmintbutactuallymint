# Aspiration Spend & Save Bank Account
Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# Sample Data from Aug 1-3, 2024
Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: 5_000.00,
  description: "August Statement",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -382.48,
  description: "Gateway Condo Fees",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -5.00,
  description: "Aspiration Pay What is Fair Fee",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: "2024-08-02",
  post_date: "2024-08-02",
  amount: 1_535.57,
  description: "Transfer from Fidelity",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: Time.zone.today,
  amount: -575.00,
  description: "Central Cooling & Heating",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: Time.zone.today,
  amount: -259.00,
  description: "Bridgecrest Car Payment",
  account: Account.s("Aspiration")
)

Transaction.create!(
  date: Time.zone.today,
  amount: -314.09,
  description: "Citi Loan Payment",
  account: Account.s("Aspiration")
)
