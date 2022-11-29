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

    @reunion.id
    @participation = Participation.new(participation_params)
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :reunion_id)
  end
end
