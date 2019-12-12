Rails.application.routes.draw do
  resources :climbs, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :climbers, only: [:index, :new, :create, :show, :edit] do 
    resources :mountains, only [:index, :new, :create, :show, :edit]
  end 
  resources :mountains, only: [:index, :new, :create, :show, :edit, :update, :destroy]  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
