online_services = Section.create_with(
  color: "purple"
).find_or_create_by!(
  name: "Online Services"
)

Category.find_or_create_by!(section: online_services, name: "Mobile Phone Plans")
Category.find_or_create_by!(section: online_services, name: "Cloud Storage")
Category.find_or_create_by!(section: online_services, name: "Bank + Tax Services")
Category.find_or_create_by!(section: online_services, name: "Apps + App Subscriptions")
Category.find_or_create_by!(section: online_services, name: "Web Hosting + Domains")
