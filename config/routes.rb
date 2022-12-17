Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :weapons, only: [:index, :show]
  resources :weapon_mods, only: [:index, :show]
end
