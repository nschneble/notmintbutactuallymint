ephemera = Section.create_with(
  color: "lime"
).find_or_create_by!(
  name: "Ephemera"
)

Category.find_or_create_by!(section: ephemera, name: "Charitable Donations")
Category.find_or_create_by!(section: ephemera, name: "Gifts")
