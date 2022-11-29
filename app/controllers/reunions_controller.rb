class ReunionsController < ApplicationController

  def new
    @reunion = Reunion.new
  end

  def create
    @reunion = Reunion.new(reunion_params)
    @reunion.user = current_user
    if @reunion.save
      redirect_to create_participation_path(@participation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reunion_params
    params.require(:reunion).permit(:name, :user_id, :description)
  end
end
