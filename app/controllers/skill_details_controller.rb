class SkillDetailsController < ApplicationController
# before_action :signed_in_user

  def index
    user = User.find params[:user_id]
    @skill_details = user.skill_details.all
    @skills = Skill.all
  end

end