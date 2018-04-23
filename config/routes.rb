Rails.application.routes.draw do
  resources :animals do
    get "delete"
  end
  resources :zonas do
    get "delete"
  end
	root to: 'animals#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
