Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [ :show ]
  resources :dashboards, only: [ :edit, :update ]
  resources :sections, only: [ :edit, :update ]
  resources :links, only: [ :create, :update ]

  patch "sections/:id/move", to: "sections#move"

  get "d/:user", to: "dashboards#show"
end
