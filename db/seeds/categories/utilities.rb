utilities = Section.create_with(
  color: "red"
).find_or_create_by!(
  name: "Utilities"
)

Category.find_or_create_by!(section: utilities, name: "Electricity")
Category.find_or_create_by!(section: utilities, name: "Internet")
Category.find_or_create_by!(section: utilities, name: "Carbon Offsets")
