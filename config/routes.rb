SetucoCMSR::Application.routes.draw do

  get "categories/show"

  # default, 閲覧側
  scope :module => 'default' do
    resources :index, :only => :index
    resources :categories, :only => :show
    get '/index(/index)' => 'index#index'
  end


  # default, ルート
  root :to => 'default/index#index'
end
