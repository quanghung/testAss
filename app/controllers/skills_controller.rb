class SkillsController < ApplicationController
# before_action :signed_in_user
  def index
    users = User.find params[:user_id]
    @user_skills = users.user_skills
  end

end