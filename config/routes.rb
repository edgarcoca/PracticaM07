Rails.application.routes.draw do
  resources :animals
  resources :zonas
	root to: 'animals#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
