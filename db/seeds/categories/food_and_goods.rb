food_and_goods = Section.create_with(
  color: "rose"
).find_or_create_by!(
  name: "Food + Goods"
)

Category.find_or_create_by!(section: food_and_goods, name: "Eating Out")
Category.find_or_create_by!(section: food_and_goods, name: "Game Nights")
Category.find_or_create_by!(section: food_and_goods, name: "Groceries + Amenities")
Category.find_or_create_by!(section: food_and_goods, name: "Fun Grocery Trips")
Category.find_or_create_by!(section: food_and_goods, name: "Everyday Consumerism")
Category.find_or_create_by!(section: food_and_goods, name: "Fun Consumerism")
