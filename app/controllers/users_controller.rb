class UsersController < ApplicationController
  before_action :signed_in_user
  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
    
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
    Skill.all.each do |skill|
     @user_skill=@user.user_skills.build(skill_id: skill.id)
        skill.detail_skills.each do |detail_skill|
        @user_skill.user_skill_details.build(detail_skill_id: detail_skill.id)
      end
    end
  end

  def create 
    @user = User.new user_params
      if @user.save
        flash[:success] = I18n.t ".messages.add_user.success"
        redirect_to users_path
      else
        flash[:success] = I18n.t ".messages.add_user.unsuccess"
        render "new"
      end
  end


  def edit
  end

 
  private

     private
         def user_params
         params.require(:user).permit :name, :password,
         :password_confirmation, :email,
         user_skills_attributes: [:skill_id, :user_id,user_skill_details_attributes: [:detail_skill_id, :user_skill_id]]
         end
     def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end