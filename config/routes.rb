Rails.application.routes.draw do
  get 'product/index'

  get 'products/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :product, only: :index


end
