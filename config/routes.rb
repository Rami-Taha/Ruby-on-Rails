Rails.application.routes.draw do


  devise_for :users, :controllers => { registrations: 'registrations' }
   resources :articles do
     resources :comments
   end
   resources :contacts
  root to: 'articles#index'
  get 'pages/about'
  get 'pages/contact'


end
