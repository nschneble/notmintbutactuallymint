accommodation = Section.create_with(
  color: "orange"
).find_or_create_by!(
  name: "Accommodation"
)

Category.find_or_create_by!(section: accommodation, name: "Cyber Insurance")
Category.find_or_create_by!(section: accommodation, name: "Mortgage Payments")
Category.find_or_create_by!(section: accommodation, name: "Condo Fees")
Category.find_or_create_by!(section: accommodation, name: "Cleaning + Other Home Services")
Category.find_or_create_by!(section: accommodation, name: "House Fund Expenditures")
