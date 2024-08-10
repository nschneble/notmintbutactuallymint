income = Section.create_with(
  color: "green"
).find_or_create_by!(
  name: "Income"
)

Category.find_or_create_by!(section: income, name: "BiggerPockets Paychecks")
Category.find_or_create_by!(section: income, name: "Interest Earned + Other Sources")
