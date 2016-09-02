Rails.application.routes.draw do
	resources :teams
	root 'teams#main'

end
