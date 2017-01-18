Rails.application.routes.draw do

  root 'pages#accueil'

  # Nos services
  get 'services', to: 'pages#services', as: :services
  get 'services/strategie-digitale', to: 'pages#strategie_digitale', as: :strategie_digitale
  get 'services/web-developpement', to: 'pages#web_developpement', as: :web_developpement
  get 'services/community-management', to: 'pages#community_management', as: :community_management
  get 'services/referencement', to: 'pages#referencement', as: :referencement  
  
  get 'realisations', to: 'pages#portfolio', as: :portfolio
  get 'agence', to: 'pages#agence', as: :agence
  get 'contact', to: 'pages#contact', as: :contact

  # optionel 
  get 'social-wall', to: 'pages#social_wall', as: :social_wall

  # admin page temporaire en attendant tous le système
  get 'admin', to: 'admins#accueil', as: :admin

  # articles du blog
  resources :blog_posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
