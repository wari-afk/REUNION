class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
    @reunion = Reunion.find(params[:reunion_id])
  end

  def create
    @reunion = Reunion.find(params[:reunion_id]) # => Comes from nested URL
    # Pick up user ids from form
    desired_participants_ids = params[:participation][:user_id] # => ["2", "3", "4"]
    # Iterate over the user ids to instantiate the participations
    desired_participants_ids.each do |participant_id|
      Participation.create(user_id: participant_id, reunion: @reunion) unless participant_id.empty?
    end

    respond_to do |format|
      format.html { redirect_to reunion_path(@reunion), notice: "You added a participants" } # classic Rails Flow
      format.text { render partial: "participations/reunion_participants_block", locals: { reunion: @reunion, participation: Participation.new }, formats: [:html] }
      end
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :reunion_id)
  end
end
