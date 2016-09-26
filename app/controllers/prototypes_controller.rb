class PrototypesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @prototype = Prototype.new
    @prototype.capturedimages.build
  end

  def create
    @prototype = @Prototype.create(create_params)

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end


end
