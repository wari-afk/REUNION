class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
    @reunion = Reunion.find(params[:reunion_id])
  end

  def create
    # you know the reunion_id bc its a nested route
    # organizer adds a user to a reunion
    # find user_id from params in form
    # add user_id to participation
    @participation = Participation.new(participation_params)
    @reunion = Reunion.find(params[:reunion_id])
    @participation.reunion = @reunion
    # @participation.user = current_user
    # @participation.user = User.find(params[:user_id])
    if @participation.save
      redirect_to reunion_path(@reunion), notice: "You added a new participant successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :reunion_id)
  end
end
