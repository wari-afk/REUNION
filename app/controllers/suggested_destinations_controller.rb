class SuggestedDestinationsController < ApplicationController
  def index
    @suggested_destinations = SuggestedDestination.new
    @suggested_destinations = @links
  end

  def show
    resources = Cloudinary::Api.resources(:type => :upload, :prefix => "reunion")["resources"].sample(3)

    @suggested_destinations = []
    resources.each do |resource|
      @suggested_destinations << resource["secure_url"]
    end
  end
end
