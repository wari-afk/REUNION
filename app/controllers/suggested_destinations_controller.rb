require_relative "../service_objects/trip_search"

class SuggestedDestinationsController < ApplicationController
  def show
  end

  def new
    @reunion = Reunion.find(params[:reunion_id])
    # @participation = @reunion.participations
    @trips = TripSearch.new(@reunion).call
  end
end
