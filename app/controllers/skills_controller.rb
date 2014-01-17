class SkillsController < ApplicationController
        before_action :signed_in_user

        def index
                @user = User.find params[:user_id]
                @user_skills = @user.user_skills.all
        end
end