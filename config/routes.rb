Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  get 'articles', to: 'articles#index', as: 'articles'
  post 'article', to: 'articles#create', as: 'new_article'
  post 'edit-article/:id', to: 'articles#update', as: 'edit_article'
  delete 'article/:id', to: 'articles#delete', as: 'delete_article'
  get 'create-article', to: 'articles#article_form', as: 'article_form'
  get 'update-article/:id', to: 'articles#update_article_form', as: 'update_article_form'
end
