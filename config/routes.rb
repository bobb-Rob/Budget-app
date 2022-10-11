Rails.application.routes.draw do
  get 'categories/new'
  get 'expenses/new'
  get 'categories/index'
  get 'categories/show'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/destroy'
  get 'expenses/index'
  get 'expenses/show'
  get 'expenses/create'
  get 'expenses/edit'
  get 'expenses/destroy'
  
  resources :users do
    resources :categories do
      resources :expenses
    end
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
end
