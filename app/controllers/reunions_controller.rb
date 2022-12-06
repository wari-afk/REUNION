class ReunionsController < ApplicationController

  def new
    @reunion = Reunion.new
  end

  def create
    @reunion = Reunion.new(reunion_params)
    @reunion.user = current_user
    if @reunion.save
      # can't figure out how to go to the create participation
      redirect_to reunion_path(@reunion)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reunion = Reunion.find(params[:id])
    @date_option = DateOption.new # for the form
  end

  private

  def reunion_params
    params.require(:reunion).permit(:name, :user_id, :description)
  end
end
