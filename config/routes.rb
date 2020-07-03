Rails.application.routes.draw do
    get "homes/index"
    root 'homes#index'
    resources :meal_plans, only: [:index, :show, :new, :create]
    resources :meal_restrictions, only: [:index, :show, :new, :create]
    resources :meals, only: [:index, :show, :new, :create, :edit, :update]
    resources :mp_meals, only: [:index, :new, :create]
    resources :restrictions, only: [:index, :show, :new, :create]
end
