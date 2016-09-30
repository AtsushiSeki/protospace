class PrototypesController < ApplicationController
  before_action :set_prototype, only :show

  def index
    @prototype =Prototype.includes(:user)
  end

  def show
    @user = @prototype.user
    @sub_images = @prototype.capturedimages.sub
  end

  def new
    @prototype = Prototype.new
    @prototype.capturedimages.build
  end

  def create
    @prototype = @Prototype.create(create_params)
  end

    def destroy
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to :root
  end

  private

  def create_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      captured_images_attributes: [
      :prototype_id,
      :photo,
      :role]
      ).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end


end
