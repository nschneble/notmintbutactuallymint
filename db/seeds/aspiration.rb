# Aspiration Spend & Save Bank Account
Account.create_with(
  credit: false
).find_or_create_by!(
  name: "Aspiration"
)

# Sample Data from Aug 1-3, 2024
Transaction.create_with(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: 5_000.00
).find_or_create_by!(
  description: "August Statement",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -382.48
).find_or_create_by!(
  description: "Gateway Condo Fees",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: "2024-08-01",
  post_date: "2024-08-01",
  amount: -5.00
).find_or_create_by!(
  description: "Aspiration Pay What is Fair Fee",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: "2024-08-02",
  post_date: "2024-08-02",
  amount: 1_535.57
).find_or_create_by!(
  description: "Transfer from Fidelity",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: Time.zone.today,
  amount: -575.00
).find_or_create_by!(
  description: "Central Cooling & Heating",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: Time.zone.today,
  amount: -259.00
).find_or_create_by!(
  description: "Bridgecrest Car Payment",
  account: Account.s("Aspiration")
)

Transaction.create_with(
  date: Time.zone.today,
  amount: -314.09
).find_or_create_by!(
  description: "Citi Loan Payment",
  account: Account.s("Aspiration")
)
