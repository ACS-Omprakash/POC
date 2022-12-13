Rails.application.routes.draw do
  
  root 'welcome#index'
  post 'change', to:'carts#change' 
  get 'carts', to:'carts#remove_all'
  get 'place_order/:total', to:"order#place_order",as:'place_order'
  get 'orders', to: 'order#orders'
  post 'discount', to:"carts#discount"
  post 'customize_food', to: 'customizefoods#customize_food'
  get 'add_to_cart/:id' => 'carts#add_to_cart', :as => 'add_to_cart'
  get 'remove_from_the_cart/:id' =>'carts#remove_from_the_cart', :as => 'remove_from_the_cart'
  get 'carts/show'

  resources :carts
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
