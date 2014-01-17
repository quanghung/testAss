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

detail_skills_list = [
  {name: "Git", skill_id: 1},
  {name: "RoR", skill_id: 1},
  {name: "CakePHP", skill_id: 2},
  {name: "Zend", skill_id: 2},
  {name: "SpringFramework", skill_id: 3},
  {name: "Structs1", skill_id: 3},
]

detail_skills_list.each do |detail_skill|
  DetailSkill.create! detail_skill
end

user_skill_details_list = [
  {user_skill_id: 1,detail_skill_id:1},

]

user_skill_details_list.each do |user_skill_detail|
  UserSkillDetail.create! user_skill_detail
end
