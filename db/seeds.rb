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

skill_details_list = [
  {name: "Struct", skill_id: 3},
  {name: "JSP",  skill_id: 3},
  {name: "JavaScipt", skill_id: 2},
  {name: "Rails",  skill_id: 1},
]

skill_details_list.each do |skill|
  SkillDetail.create! skill
end

user_skills_list = [
  {user_id: 1, skill_id: 1},
  {user_id: 1, skill_id: 2},
  {user_id: 2, skill_id: 1},
  {user_id: 2, skill_id: 2},
  {user_id: 3, skill_id: 1},
  {user_id: 3, skill_id: 3},
  {user_id: 4, skill_id: 1},
  {user_id: 4, skill_id: 3}
]

user_skills_list.each do |user_skill|
  UserSkill.create! user_skill
end

user_skill_details_list = [
  {user_skill_id: 1, skill_detail_id: 1},
  {user_skill_id: 1, skill_detail_id: 2},
  {user_skill_id: 2, skill_detail_id: 1},
  {user_skill_id: 2, skill_detail_id: 2},
  {user_skill_id: 3, skill_detail_id: 1},
  {user_skill_id: 3, skill_detail_id: 3},
  {user_skill_id: 4, skill_detail_id: 1},
  {user_skill_id: 4, skill_detail_id: 3}
]

user_skill_details_list.each do |user_skill|
  UserSkillDetail.create! user_skill
end
