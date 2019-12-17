Rails.application.routes.draw do
  resources :climbs
  resources :climbers, only: [:index, :new, :create, :show, :edit, :update] do 
    resources :mountains, only: [:index, :new, :create, :show, :edit, :update]
  end 
  resources :mountains, only: [:index, :new, :create, :show, :edit, :update]  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
