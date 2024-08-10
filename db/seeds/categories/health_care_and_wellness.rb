health_care_and_wellness = Section.create_with(
  color: "sky"
).find_or_create_by!(
  name: "Health Care + Wellness"
)

Category.find_or_create_by!(section: health_care_and_wellness, name: "Insurance Premiums")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Meds, Copays + Appointments")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Dental Visits")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Contacts, Glasses + Exams")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Therapy")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Coaching")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Yoga")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Accupuncture, Reiki + Massage")
Category.find_or_create_by!(section: health_care_and_wellness, name: "THC, CBD + Edibles")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Personal Care")
Category.find_or_create_by!(section: health_care_and_wellness, name: "Health Fund Expenditures")
