Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[destroy update] do
    resources :reviews, only: %i[create]
  end
end
