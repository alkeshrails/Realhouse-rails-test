Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :managers
  resources :commecials
  resources :complex_buildings
  resources :houses

  post '/purchase', to: 'welcome#purchase' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
