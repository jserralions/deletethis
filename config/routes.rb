Rails.application.routes.draw do
	resources :team
	get 'team/all' => 'team#index'
end
