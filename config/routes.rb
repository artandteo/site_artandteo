Rails.application.routes.draw do

  devise_for :users

  root 'pages#accueil'
  scope "(/:locale)", locale: /en/ do
    get '/:locale' => 'pages#accueil'
    # Nos services
    get '/services', to: 'pages#services', as: :services
    get '/services/strategie-digitale', to: 'pages#strategie_digitale', as: :strategie_digitale
    get '/services/web-developpement', to: 'pages#web_developpement', as: :web_developpement
    get '/services/community-management', to: 'pages#community_manager', as: :community_management
    get '/services/referencement', to: 'pages#referencement', as: :referencement

    get '/realisations', to: 'pages#portfolio', as: :portfolio
    get '/agence', to: 'pages#agence', as: :agence
    get '/contact', to: 'pages#contact', as: :contact
    post '/contact', to: 'pages#send_mail'
    get '/mentions_legales', to: 'pages#mentions_legales', as: :mentions_legales

    # optionel
    get '/social-wall', to: 'pages#social_wall', as: :social_wall

    resources :blogs

    # ADMINISTRATION #
    get '/admin', to: 'admins#accueil', as: :admin

    # NEWSLETTER #
    post '/', to: "newsletters#create"

    scope :admin do
      resources :users
      resources :categories
    end
  end


  # ckeditor

  mount Ckeditor::Engine => '/ckeditor'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
