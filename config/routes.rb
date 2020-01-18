Rails.application.routes.draw do
  resources :components
  root "components#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
