class ApplicationController < ActionController::Base
    private

    def get_prevision(latitud, longitud)
        url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{latitud}&lon=#{longitud}&units=metric&appid=#{ENV['OPENWEATHERMAP_API_KEY']}"
        response = HTTParty.get(url)
        JSON.parse(response.body)
    end
end