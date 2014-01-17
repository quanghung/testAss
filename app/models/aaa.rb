class User < ActiveRecord::Base
  has_secure_password
  has_many :user_skills
  has_many :skills, through: :user_skills
  accepts_nested_attributes_for :user_skills
  attr_accessor :not_validates_password
  before_validation ->{self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX},
  uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 6}, unless: :not_validates_password
 

  class << self
    def new_remember_token
      SecureRandom.urlsafe_base64
    end
  
    def encrypt token
      Digest::SHA1.hexdigest token.to_s
    end
  end
end
