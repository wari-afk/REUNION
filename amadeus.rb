require "httparty"
require "json"

auth_url = "https://test.api.amadeus.com/v1/security/oauth2/token"

auth_response = HTTParty.post(auth_url, {
  headers: {"Content-Type" => "application/x-www-form-urlencoded"},
  body: "grant_type=client_credentials&client_id=6s3fznkhE0kzdEAJsCmr4p4IMR74whAX&client_secret=7xgmsV6iMGbBnTaX"
})

bearer_token = auth_response["access_token"]

starting_airport = "LON"
departure_date = "2022-12-10"
return_date = "2022-12-31"

url = "https://test.api.amadeus.com/v1/shopping/flight-destinations?origin=#{starting_airport}&departureDate=#{departure_date},#{return_date}"

response = HTTParty.get(url, {
  headers: { "Authorization": "Bearer #{bearer_token}" }
})
