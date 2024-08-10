# seeds a user for the admin dashboard
User.create_with(
  password: "8qLMiXtieeBRsWqQ7sp7",
  password_confirmation: "8qLMiXtieeBRsWqQ7sp7"
).find_or_create_by!(
  email: "nick.schneble@hey.com"
)
