SetucoCMSR::Application.routes.draw do

  devise_for :accounts, :controllers => {
    :sessions => 'accounts/sessions'
  }
  get '/admin' => 'admin/index#index', :as => :account_root

  # default, 閲覧側
  scope :module => 'default' do
    resources :index, :only => :index
    resources :categories, :only => :show
    resources :tags, :only => :show
    resources :pages, :only => :show
    get '/index(/index)' => 'index#index'
    get '/search' => 'keyword#search'
    root :to => 'index#index'
  end

  # admin, 管理側
  namespace 'admin' do
    resources :index, :only => :index
    resources :pages, :except => :show
    resources :directories, :only => :index
    resources :categories, :only => [:index, :create, :update, :destroy]
    resources :tags, :only => [:index, :create, :update, :destroy]
    resources :medias, :except => :show
    resource :site, :only => [:edit, :update]
    resource :account
    resource :ambition, :only => :update
    resource :goal, :only => [:edit, :update]
    get '/logout' => 'login#logout'
    root :to => 'index#index'
  end

end
