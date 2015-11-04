Rails.application.routes.draw do  
  root 								'static_pages#home'
  get 	 'about' 	 => 'static_pages#about'
  get 	 'signup'  => 'users#new'
  get 	 'login'	 =>	'sessions#new'
  post   'login'	 =>	'sessions#create'
  delete 'logout'	 =>	'sessions#destroy'
  get 	 '/recipes' => 'recipes#index'
  get    '/recipes/new' => 'recipes#new'
  get 	 '/recipes/:id' => 'recipes#show', as: :recipe

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  # resources :recipes do
  #   resources :ingredients
  # end
  resources :recipes
  resources :ingredients
  resources :items
end
