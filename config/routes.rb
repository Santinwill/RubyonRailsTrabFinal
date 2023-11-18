Rails.application.routes.draw do
  resources :occurrences
  resources :catastrophes
  resources :recipients
  resources :people

  root to: "catastrophes#index"
  # get "", 'catastrophes'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
