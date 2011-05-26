SetucoCMSR::Application.routes.draw do

  # default, 閲覧側
  scope :module => 'default' do
    resources :index, :only => :index
    get '/index(/index)' => 'index#index'
  end


  # default, ルート
  root :to => 'default/index#index'
end
