Rails.application.routes.draw do
  
  resources :categories
  resources :articles do
    resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  root 'welcome#index'
 # =begin
    #get "/articles" index
    #post "/articles" create
    #delete "/articles/:id" destroy
    #get "/articles/:id" show
    #get "/articles/new" new
    #get "/articles/edit" edit
    #patch "/articles/:id" update
    #put "/articles/:id" update
 # =end
end
