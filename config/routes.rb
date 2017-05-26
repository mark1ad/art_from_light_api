Rails.application.routes.draw do
  resources :pictures do
    collection do
      get 'users/:id', to: 'pictures#users'
    end
  end
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
    # collection do
    #   post ':id/pictures', to: 'users#pictures'
    # end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
