Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update] do
    member do
      get :follows, :followers
    end
    resource :relationships, only: [:create, :destroy]
  end

  # 投稿用ルーティングを追加
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only:[:create, :destroy]
    collection do
    get 'confirm'
  end
  end

  root to: "homes#top"
  get "up" => "rails/health#show", as: :rails_health_check
end
