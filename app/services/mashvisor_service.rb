require 'uri'
require 'net/http'

class MashvisorApiService
  def fetch_rental_rates
    url = URI("https://mashvisor-api.p.rapidapi.com/rental-rates?state=CA&source=airbnb&city=Los%20Angeles&zip_code=90291")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    request["X-RapidAPI-Key"] = ENV['X-RapidAPI-Key']
    request["X-RapidAPI-Host"] = 'mashvisor-api.p.rapidapi.com'
    
    response = http.request(request)
    puts response.read_body
  end
end
