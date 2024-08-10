travels = Section.create_with(
  color: "amber"
).find_or_create_by!(
  name: "Travels"
)

Category.find_or_create_by!(section: travels, name: "Travel Transportation")
Category.find_or_create_by!(section: travels, name: "Travel Accommodation")
Category.find_or_create_by!(section: travels, name: "Travel Activities")
Category.find_or_create_by!(section: travels, name: "Travel Bureaucracy")
Category.find_or_create_by!(section: travels, name: "Travel Fund Expenditures")
