Rails.application.routes.draw do  
  root 								'static_pages#index'
  get 	 'about' 	 => 'static_pages#about'
  get 	 'signup'  => 'users#new'
  get 	 'login'	 =>	'sessions#new'
  post   'login'	 =>	'sessions#create'
  delete 'logout'	 =>	'sessions#destroy'
  

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  

  resources :recipes do
    resources :items do
     resources :ingredients
    end
  end
  
end
