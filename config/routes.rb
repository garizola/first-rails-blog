Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :blog_posts
  # Defines the root path route ("/")
  root "blog_posts#index"

  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post

  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post

  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post

  # patch "/blog_posts/:id", to: "blog_posts#update"

  # delete "/blog_posts/:id", to: "blog_posts#destroy"


  # post "/blog_posts/", to: "blog_posts#create", as: :blog_posts
end
