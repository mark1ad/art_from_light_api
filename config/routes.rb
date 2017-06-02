Rails.application.routes.draw do
  resources :tags do
    member do
      get :pictures
    end
  end

  resources :collections do
    collection do
      get 'users/:id', to: 'collections#users'
    end

    member do
      get :pictures
      get :pics_not_in
      post :picture_add
      post :picture_remove
    end
  end
  resources :pictures do
    collection do
      get 'users/:id', to: 'pictures#users'
    end

    member do
      get :tags
      post :tags_add
      post :tag_remove
    end
  end
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
