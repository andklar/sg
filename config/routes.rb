Rails.application.routes.draw do
root :to => 'users#welcome'

resources :user_sessions

resources :users do
	resources :submissions
end

resources :tasks

get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout

end
