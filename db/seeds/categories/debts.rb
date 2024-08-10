debts = Section.create_with(
  color: "cyan"
).find_or_create_by!(
  name: "Debts"
)

Category.find_or_create_by!(section: debts, name: "Credit Card Fees + Finance Charges")
Category.find_or_create_by!(section: debts, name: "Legacy Debt + Loan Payments")
