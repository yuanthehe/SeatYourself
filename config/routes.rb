Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :owners, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :restaurants

  resources :users do
    resources :reservations, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :restaurants do
    resources :reservations, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :restaurants do
    resources :reviews, only: [:create, :show, :destroy]
  end

  resources :users do
    resources :reviews, only: [:create, :show, :destroy]
  end

end
