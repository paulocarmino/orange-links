Rails.application.routes.draw do
  get "up" => "rails/health#show", :as => :rails_health_check

  resources :links
  resources :views, path: :v, only: [:show]
  root "links#index"
end
