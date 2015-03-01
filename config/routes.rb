Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  get 'welcome/index'

  resources :notes do
    collection do
      get 'search'
    end
  end


  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'


  match '*path' => redirect('/'), via: :get
end
