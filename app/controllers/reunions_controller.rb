class ReunionsController < ApplicationController

  def new
    @reunion = Reunion.new
  end

  def create
    @reunion = Reunion.new(reunion_params)
    @reunion.user = current_user
    if @reunion.save
      # can't figure out how to go to the create participation
      redirect_to new_reunion_participation_path(@reunion)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reunion_params
    params.require(:reunion).permit(:name, :user_id, :description)
  end
end
