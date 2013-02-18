PetitionManager::Application.routes.draw do
  devise_for :users

  resources :programs, :courses, :petitions
  match 'programs/' => 'programs#index'
  match 'courses/' => 'courses#index'

  # root :to => 'welcome#index'

end
