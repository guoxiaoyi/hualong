class En::ArticlesController < ApplicationController
  before_action :get_articles_category
  before_action :right_page
  def index
    if @article_category
      @articles = @article_category.articles.order("published_at desc").page( params[:page] )
    else
      @articles = WizcmsArticle::Article.all.order("published_at desc").page( params[:page] )
    end
    @content = Content.new
  end

  def show
    @article = WizcmsArticle::Article.get( params[:id] )
    @content = Content.new
  end
  private
    def get_articles_category
      @article_category = WizcmsArticle::ArticleCategory.get( params[:article_category_id] )
    end
end
