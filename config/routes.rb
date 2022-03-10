Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resource :players, only: [:new, :create, :show]

  resource :weapon_selections, only: [:new, :create, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
