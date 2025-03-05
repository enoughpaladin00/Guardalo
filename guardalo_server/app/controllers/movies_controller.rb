require 'net/http'
require 'json'

class MoviesController < ApplicationController
  def show
    api_key = "a714e97d0eefee451cd4e3f6632a23bf"  # Sostituisci con la tua API Key di TMDb
    movie_id = params[:id]
    url = "https://api.themoviedb.org/3/movie/#{movie_id}?api_key=#{api_key}&language=it-IT&append_to_response=watch/providers"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    @movie = JSON.parse(response)
  end
end

