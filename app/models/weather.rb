require 'rest-client'
require 'dotenv/load'

class Weather < ApplicationRecord
  def self.getWeatherfor(location)
    response_string = RestClient.get("api.openweathermap.org/data/2.5/forecast?q=#{location}&units=imperial#{ENV['KEY']}")
    response_hash = JSON.parse(response_string)
    return response_hash
  end
end
