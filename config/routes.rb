Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  
  get 'about' => "pages#about", as: 'about'

  # get 'pages/about' => "pages#about"
  # get 'about-2' => "pages#about"

# resources :posts

resources :posts do 
  resources :comments
end

end
