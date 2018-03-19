Rails.application.routes.draw do
  devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :posts, only: [:index, :create]
	resources :users, only: [:show]
	resources :tracked_pages, only: [:show, :index]
	
	
	get 'posts/getFeed', to: 'posts#getFeed'
	
	root to: 'welcome#index'
end
