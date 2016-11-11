Rails.application.routes.draw do
<<<<<<< HEAD

  # root '/'

=======
>>>>>>> origin
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :owners, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :restaurants, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :reservations, only: [:new, :create, :show, :edit, :update, :destroy]

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

  resources :owners do
    resources :restaurants, only: [:new, :create, :show, :edit, :destroy]
  end

  resources :reservations do
    resources :restaurants, only: [:new, :create, :edit, :update, :destroy]
  end
<<<<<<< HEAD


=======
>>>>>>> origin

end
