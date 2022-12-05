class TripSearch
  def initialize(reunion)
    @reunion = reunion
  end

  def call
    # ORGANIZER API CALL
    source=''
    organizer = @reunion.user
    get_airport_url = "https://api.skypicker.com/locations?term=#{organizer.city_of_origin}"
    airport_response = HTTParty.get(get_airport_url)
    source += 'origins[]='
    source += airport_response["locations"][0]['name'] # Munich
    source += '('
    source += airport_response["locations"][0]['code'] # MLC
    source += ')'
    source += airport_response["locations"][0]['country']['name'] # Germany

    # SAME THING BUT FOR EACH OF THE PARTICIPANTS
    @reunion.participations.each do |participation|
      get_airport_url = "https://api.skypicker.com/locations?term=#{participation.user.city_of_origin}"
      airport_response = HTTParty.get(get_airport_url)
      source += '&origins[]='
      source += airport_response["locations"][0]['name']
      source += '('
      source += airport_response["locations"][0]['code']
      source += ')'
      source += airport_response["locations"][0]['country']['name']
    end

    # source => "&origins[]=Munich,MLC,Germany&origins[]=Amsterdam,AMS,Netherlands"

    trip_url = "https://api.tripmatch.org/matches?#{source}&arrivalDate=2022-12-31&flightDurations=15,15,15,15,15&arrivalDifference=10&currency=&sortBy=price&flightDepartures[]=0-24&flightDepartures[]=0-24&flightDepartures[]=0-24&flightDepartures[]=0-24&flightDepartures[]=0-24&flightArrivals[]=0-24&flightArrivals[]=0-24&flightArrivals[]=0-24&flightArrivals[]=0-24&flightArrivals[]=0-24&returnDepartures[]=0-24&returnDepartures[]=0-24&returnDepartures[]=0-24&returnDepartures[]=0-24&returnDepartures[]=0-24&returnArrivals[]=0-24&returnArrivals[]=0-24&returnArrivals[]=0-24&returnArrivals[]=0-24&returnArrivals[]=0-24&destination=Europe"

    trip_response = HTTParty.get(trip_url)
    unique_trips = []

    trip_response.each do |trip|
      unique_trips << trip['destination']['name']
    end

    unique_trips = unique_trips.uniq
    trips = []

    trip_response.each do |trip|
      trips << trip if unique_trips.include?(trip['destination']['name'])
      unique_trips.delete(trip['destination']['name'])
    end

    trips
  end

end
