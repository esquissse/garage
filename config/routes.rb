Rails.application.routes.draw do
  resources :voyages
  resources :marques
  resources :personnes
  get '/voitures/recherche/:immatriculation', to: 'voitures#recherche', as: 'recherche'
  resources :voitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
