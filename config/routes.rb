Rails.application.routes.draw do
<<<<<<< HEAD
   devise_for :users, :controllers => { registrations: 'registrations' }
=======
  resources :articles
>>>>>>> articles
root to: 'pages#index'
  get 'pages/about'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
