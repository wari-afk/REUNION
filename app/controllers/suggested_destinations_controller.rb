class SuggestedDestinationsController < ApplicationController

  def create
    @suggested_destination = SuggestedDestination.new(suggested_destination_params)
    @suggested_destination.user = current_user
    SuggestedDestination.transaction do
      # using an instance variable to make it available to render
      # otherwise we'd have to declare bands in the outer scope as nil
    @suggested_destination = SuggestedDestination.create!(suggested_destination_params)
      end
      render json: @suggested_destination
  end

    if suggested_destination.save
    render json: suggested_destination
    else
    render json: { errors: suggested_destination.errors.full_messages }
    end

  def show
  end

private

  def suggested_destination_params
    params.permit(suggested_destination: [:destination_city, :price]).require(:suggested_destination)
  end
end
