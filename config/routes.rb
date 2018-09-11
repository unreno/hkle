Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :variants, only: :index
	resources :chromosomes, only: :show
	resources :statics, only: :index
	root :to => "statics#index"
end
