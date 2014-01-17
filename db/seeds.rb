# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PASSWORD = "123456"

skills_list = [
  {name: "Ruby"},
  {name: "PHP"},
   {name: "Java"}
]

skills_list.each do |skill|
  Skill.create! skill
end

users_list = [
  {name: "Admin",
    email: "admin@framgia.com",
    password: PASSWORD,
    password_confirmation: PASSWORD},
{name: "Hung",
    email: "a@framgia.com",
    password: PASSWORD,
    password_confirmation: PASSWORD},
  
]

users_list.each do |user|
  User.create! user
end

user_skills_list = [
  {user_id: 1, skill_id: 1},

]

user_skills_list.each do |user_skill|
  UserSkill.create! user_skill
end