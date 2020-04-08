Rails.application.routes.draw do
  root 'posts#index'
  
  get 'about' => "pages#about"
  # get 'pages/about' => "pages#about"
  # get 'about-2' => "pages#about"

  resources :posts

end
