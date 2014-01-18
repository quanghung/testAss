class UsersController < ApplicationController
  before_action :signed_in_user

  def index
    @users = User.all.paginate page: params[:page], per_page:2
  end
        
  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
    if params[:g_id_check].present?
    Skill.all.each do |skill|
      @user_skill = @user.user_skills.build(skill_id: skill.id)
      skill.skill_details.each do |skill_detail|
        @user_skill.user_skill_details.build(skill_detail_id: skill_detail.id)
      end        
    end
    render partial: "form_temp"
    else
      Skill.all.each do |skill|
        @user_skill = @user.user_skills.build(skill_id: skill.id)
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
      redirect_to new_user_path
    end
  end

  private
    def user_params
      params.require(:user).permit :password,
        :password_confirmation, :email,:name,
        user_skills_attributes: [:skill_id,
        user_skill_details_attributes: [:skill_detail_id]]
    end
end