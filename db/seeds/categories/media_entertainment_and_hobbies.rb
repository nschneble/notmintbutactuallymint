media_entertainment_and_hobbies = Section.create_with(
  color: "pink"
).find_or_create_by!(
  name: "Media, Entertainment + Hobbies"
)

Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Streaming Services")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Digital Rentals + Purchases")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "News + Media Subscriptions")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Books + Audiobooks")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Tabletop + Video Games")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "IRL Activities")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Crowdfunding Campaigns")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Arts & Crafts, Classes + Webinars")
Category.find_or_create_by!(section: media_entertainment_and_hobbies, name: "Super FUN(d) Expenditures")
