Rails.application.routes.draw do
  devise_for :users
	root 'articles#index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"
  get '/offline.html' => "service_worker#offline"

  match "*path" => "articles#index", via: [:get, :post],
  constraints: lambda { |req| req.path.exclude? 'rails/active_storage' }

end
