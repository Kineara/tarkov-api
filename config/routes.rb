Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :game_versions do
    resources :categories do
      resources :sub_categories do
        resources :sub_x2_categories do
          resources :sub_x3_categories do
            resources :items
          end
        end
      end
    end
  end

  # resources :categories
  # resources :sub_categories
end
