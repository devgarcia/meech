Rails.application.routes.draw do


  get 'initial', to: 'components#initial'
  resources :components
  root "components#initial"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
