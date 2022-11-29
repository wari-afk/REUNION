class ParticipationController < ApplicationController
  def new
    @participation = Participation.new
  end

  def create
    # you know the reunion_id
    # organizer adds a user to a reunion
    # find user_id from params
    # add user_id to participation

    @reunion.id
    @participation = Participation.new(participation_params)
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :reunion_id)
  end
end
