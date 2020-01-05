Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games
  root to: "pages#index"
  get "/search", to: "searches#index"
end
