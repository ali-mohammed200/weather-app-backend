require 'rest-client'
require 'dotenv/load'

class WeatherController < ApplicationController
  def index
    # byebug
    myWeather = Weather.getWeatherfor("london")
    # response_string = RestClient.get("api.openweathermap.org/data/2.5/forecast?q=London#{ENV['KEY']}")
    # response_hash = JSON.parse(response_string)
    #
    # cats1200 = response_hash["list"].select { |obj| obj["dt_txt"].include?("00:00:00") }
    # byebug
    # @weather = cats1200
    @weather = {test: myWeather}
    render json: @weather
  end

  def ipLoc
    # byebug
    myWeather = Weather.getWeatherfor(location_params["location"])
    fiveday = myWeather["list"].select { |obj| obj["dt_txt"].include?("15:00:00") }
    @weather = fiveday
    render json: @weather
  end

  def findCity
    @weather = {test: "findCity"}
    render json: @weather
  end

  private
  def location_params
    params.permit(:location)
  end
end


#Weather => api.openweathermap.org/data/2.5/weather?q=London&units=imperial#{ENV['KEY']}
#Forecast => api.openweathermap.org/data/2.5/forecast?q=London&units=imperial#{ENV['KEY']}


### date-time
# cats = response_hash["list"].map { |obj| obj["dt_txt"] }
# cats1 = response_hash["list"].map { |obj| obj["main"] }
###

###
# to have a custom location inputted by the user and
# passed to the controller, you will need a form with
# a post request that will be routed with a post
# request which will then fire off the appropriate
# method in the controller which will pass in the strong
# params to a specfic weather class method which
# will do a RestClient fetch which will then be parsed
# and sent back to the front end as a json obj
# which will then be manipulated to make cards.
