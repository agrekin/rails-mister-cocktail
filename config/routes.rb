Rails.application.routes.draw do
  # get 'doses/new'

  # get 'cocktails/index'

  # get 'cocktails/edit'

  # get 'cocktails/new'

  # get 'cocktails/show'

  # get 'cocktails/_form'

  resources :cocktails do
    resources :doses , only: [:new, :create, :destroy]
  end

  root to: 'cocktails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
