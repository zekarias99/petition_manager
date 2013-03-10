PetitionManager::Application.routes.draw do
  devise_for :users

  resources :programs, :courses, :petitions

  root :to => 'petitions#index'

  match 'programs/' => 'programs#index'
  match 'courses/' => 'courses#index'
end
