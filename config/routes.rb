Rails.application.routes.draw do

  # Root
  root 'pages#home'


  # Devise
  devise_for :users, :path => '',
             :path_names => { :sign_in => 'login', :sign_out => 'logout', :sign_up => 'register' },
             :controllers => { :registrations => 'registrations' }

  # Articles Resource
  resources :articles

end
