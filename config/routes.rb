Rails.application.routes.draw do
  resources :users
  resources :climbers, only: [:index, :new, :create, :show, :edit, :update] do 
    resources :mountains, only: [:new, :create, :show, :edit]
  end 
  resources :mountains, only: [:index, :new, :create, :show, :edit, :update] 
  resources :climbs, only: [:index, :new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
