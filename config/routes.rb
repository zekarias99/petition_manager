PetitionManager::Application.routes.draw do
  devise_for :users

  resources :petitions#, :programs, :courses

  root :to => 'petitions#index'

  # match 'programs/' => 'programs#index'
  # match 'courses/' => 'courses#index'
end
