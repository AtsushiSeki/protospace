class UsersController < ApplicationController

  def index
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
    redirect_to_root_path
  end

private

def update_params
  params.require(:user).permit(:name, :password, :email, :profile, :work, :avatar)
end

end