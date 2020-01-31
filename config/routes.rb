Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'main', to: 'pages#main'
      get 'admin_page', to: 'pages#admin_page'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
