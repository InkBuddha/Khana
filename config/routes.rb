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
    get 'delete'
  end

  resources :meals do
    get '/month_calendar' => 'meals#month_calendar', as: 'month_calendar'
  end
  
end
