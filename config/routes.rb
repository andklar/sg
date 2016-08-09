Rails.application.routes.draw do
root :to => 'users#welcome'

resources :user_sessions
resources :users

resources :tasks do
	resources :submissions
end

resources :photo_tasks do
  resources :submissions
end

resources :answer_tasks do
  resources :submissions
end


get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout

get 'about' => 'tasks#about'

end
