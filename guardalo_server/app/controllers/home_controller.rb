
require 'net/http'
require 'json'

class HomeController < ApplicationController
  def index
    api_key = "a714e97d0eefee451cd4e3f6632a23bf"  # Sostituisci con la tua API Key di TMDb
    url = "https://api.themoviedb.org/3/movie/popular?api_key=#{api_key}&language=it-IT"
    
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    
    @movies = data["results"]
  end
end

