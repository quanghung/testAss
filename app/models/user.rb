class User < ActiveRecord::Base
  has_secure_password
  has_many :user_skills
  has_many :user_skill_details
  has_many :skills, through: :user_skills
  has_many :skill_details, through: :user_skill_details
  accepts_nested_attributes_for :user_skills,
   reject_if: lambda { |params| params[:skill_id].nil? }, allow_destroy: true
  attr_accessor :not_validates_password
  before_validation ->{self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 6}, unless: :not_validates_password



  
    def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end


