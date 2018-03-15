class Zh::WelcomeController < ApplicationController
  def index
    @content_us = WizcmsArticle::Page.get(:zh_contact_us)
    @history = WizcmsArticle::Page.get(:zh_history)
    @products = ProductCategory.find_by(cid: 1).products
    @news = WizcmsArticle::ArticleCategory.get( "zh_news" ).articles
    @notice = WizcmsArticle::ArticleCategory.get( "zh_notice" ).articles

  end
end
