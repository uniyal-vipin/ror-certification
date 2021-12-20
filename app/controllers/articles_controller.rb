class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: %i[update delete update_article_form]

  def index
    @articles = Article.where(user_id: current_user.id)
  end

  def create
    article = Article.new(article_params.merge!(user_id: current_user.id))
    redirect_to articles_path if article.save!
  end

  def update
    redirect_to articles_path if @article.update!(article_params.merge!(user_id: current_user.id))
  end

  def delete
    redirect_to articles_path if @article.destroy
  end

  def article_form
  end

  def update_article_form
  end

  private

  def article_params
    params.permit(:title, :description)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
