Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [ :show ]
  resources :dashboards, only: [ :edit, :update ]
  resources :sections, only: [ :edit, :update ] do
    resources :links, only: [ :create, :update ]
  end

  patch "sections/:id/move", to: "sections#move"

  get "d/:user", to: "dashboards#show"
end
