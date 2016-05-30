Rails.application.routes.draw do

  get 'pages/index'

  get 'thresholds/page1'

  get 'thresholds/page2'

  get 'thresholds/page3'

  resources :stores do 
    resources :comments, module: :stores, only: [:create, :destroy]
    resources :likes, module: :stores, only: [:create]

    resources :products do 
      resources :comments, module: :products, only: [:create, :destroy]
      resources :likes, module: :products, only: [:create]
      resources :tags
    end
  end

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :users do
    resources :user_wishlists
  end

  resources :searches do
    collection do
      match 'search', to: 'searches#index', via: :post, as: :search
    end
  end

  delete '/remove_from_user_wishlist/:user_wishlist_id/:product_id', to: 'user_wishlists#remove_from_user_wishlist', as: 'remove_from_user_wishlist'

  post '/add_to_user_wishlist/:user_wishlist_id/:product_id', to: 'user_wishlists#add_to_user_wishlist', as: 'add_to_user_wishlist'

  root to: "pages#index"
end
