Rails.application.routes.draw do
  get "/articles", to: "articles#index", as: :all_articles

  post "/articles", to: "articles#create"
  get "/articles/new", to: "articles#new", as: :new_article
  
  get "/articles/:id", to: "articles#show", as: :article

  get "/articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "/articles/:id", to: "articles#update"

  delete "articles/:id", to: "articles#destroy"
end
