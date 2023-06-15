class ApiController < ApplicationController
  require_relative '../services/mashvisor_service'

  def rental_rates
    service = MashvisorApiService.new
    data = service.fetch_rental_rates
    render json: data
  end
end