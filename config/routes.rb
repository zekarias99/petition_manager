PetitionManager::Application.routes.draw do
  resources :programs, :courses, :petitions

  root :to => 'petitions#index'
  
  match 'programs/' => 'programs#index'
  match 'courses/' => 'courses#index'
end
