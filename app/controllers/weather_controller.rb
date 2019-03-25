require 'rest-client'
require 'dotenv/load'

class WeatherController < ApplicationController
  def index
    response_string = RestClient.get("api.openweathermap.org/data/2.5/weather?q=London#{ENV['KEY']}")
    response_hash = JSON.parse(response_string)
    @weather = response_hash
    render json: @weather
  end
end
