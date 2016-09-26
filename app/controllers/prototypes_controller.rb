class PrototypesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = @Prototype.create(create_params)

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


end
