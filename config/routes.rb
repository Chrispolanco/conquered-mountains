Rails.application.routes.draw do
  resources :users
  resources :astronauts, only: [:index, :new, :create, :show, :edit, :update] do 
    resources :missions, only: [:index, :new, :create, :show, :edit]
  end 
  resources :human_space_flights, only: [:index, :new, :create, :show, :edit, :update] 
  resources :missions, only: [:index, :new, :create, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
