Rails.application.routes.draw do
  get 'movies/show'
  root "home#index"
  get "movies/:id", to: "movies#show", as: "movie" 
  #Se un utente visita /movies/12345, Rails capisce che deve mostrare quel film.
  #la richiesta deve essere gestita dal metodo show del MoviesController
  #Crea un helper (movie_path) per generare URL dinamiche.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
