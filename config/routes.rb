Rails.application.routes.draw do
  root to: 'controller#action'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
