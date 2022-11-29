class ReunionsController < ApplicationController

  def new
    @reunion = Reunion.new
  end

  def create
    @reunion = Reunion.new(reunion_params)
    @reunion.user = current_user
  end

  private

  def reunion_params
    params.require(:reunion).permit(:name, :user_id, :description)
  end
end