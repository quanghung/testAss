class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :skill_details
  accepts_nested_attributes_for :skill_details, allow_destroy: true
  validates :name, presence: true
end
