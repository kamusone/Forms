Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/about/me', to: 'static_pages#about_me', as: 'me'
  get '/about/us', to: 'static_pages#about_us', as:'us'
  get 'users/new', to: 'users#new', as: 'user_new'
  post 'users/new', to: 'users#create'
  get 'users/error', to: 'users#error'
  get 'users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
