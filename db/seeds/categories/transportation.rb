transportation = Section.create_with(
  color: "yellow"
).find_or_create_by!(
  name: "Transportation"
)

Category.find_or_create_by!(section: transportation, name: "Car Insurance")
Category.find_or_create_by!(section: transportation, name: "Car Payments")
Category.find_or_create_by!(section: transportation, name: "Gas")
Category.find_or_create_by!(section: transportation, name: "Parking, Tolls + Bureaucracy")
Category.find_or_create_by!(section: transportation, name: "Ride Shares")
Category.find_or_create_by!(section: transportation, name: "Cleaning + Other Services")
