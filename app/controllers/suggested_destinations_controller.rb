class SuggestedDestinationsController < ApplicationController
  def show
  end

  def new
    @reunion = Reunion.find(params[:reunion_id])
    # @participation = @reunion.participations

  end
end
