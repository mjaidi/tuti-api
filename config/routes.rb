# frozen_string_literal: true

Rails.application.routes.draw do
  require 'sidekiq/web'
  authenticate :user, ->(u) { u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations',
               passwords: 'passwords'
             },
             defaults: { format: :json }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'secret', to: 'pages#secret'
      get 'admin', to: 'pages#admin'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
