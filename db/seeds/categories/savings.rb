savings = Section.create_with(
  color: "blue"
).find_or_create_by!(
  name: "Savings"
)

Category.find_or_create_by!(section: savings, name: "Emergency Savings")
Category.find_or_create_by!(section: savings, name: "House Fund")
Category.find_or_create_by!(section: savings, name: "Travel Fund")
Category.find_or_create_by!(section: savings, name: "HBOT/SGB Health Fund")
Category.find_or_create_by!(section: savings, name: "Super FUN(d)")
Category.find_or_create_by!(section: savings, name: "IRAs")
