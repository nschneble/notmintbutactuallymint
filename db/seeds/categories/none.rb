none = Section.create_with(
  color: "neutral"
).find_or_create_by!(
  name: I18n.t("sections.none")
)

Category.find_or_create_by!(section: none, name: I18n.t("categories.none"))
Category.find_or_create_by!(section: none, name: "Statements")
Category.find_or_create_by!(section: none, name: "Transfers")
