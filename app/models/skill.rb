class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :user, through: :user_skills
  validates :name, presence: true
end
