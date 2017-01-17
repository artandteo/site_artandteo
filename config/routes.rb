Rails.application.routes.draw do
  root 'pages#accueil'
  get 'services', to: 'pages#services', as: :services
  get 'realisations', to: 'pages#portfolio', as: :portfolio
  get 'contact', to: 'pages#contact', as: :contact

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
