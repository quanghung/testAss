class UsersController < ApplicationController
 def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @entries = @user.entries.paginate(page: params[:page], :per_page => 4)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

 
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
