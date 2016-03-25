Rails.application.routes.draw do
  root 'homepages#homepage'

  resources :users do
    get :items
  end

  resource :homepage, only: [] do
    get :homepage
  end
end
