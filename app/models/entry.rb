class Entry < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  default_scope -> { order('created_at DESC') }
  # attr_accessible :body, :title
  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id", 
          user_id: user.id)
  end
end