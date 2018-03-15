class En::WelcomeController < ApplicationController

  def index
    @content_us = WizcmsArticle::Page.get(:en_contact_us)
    @history = WizcmsArticle::Page.get(:en_history)
    @products = ProductCategory.find_by(cid: 3).products
    @news = WizcmsArticle::ArticleCategory.get( "en_news" ).articles
    @notice = WizcmsArticle::ArticleCategory.get( "en_notice" ).articles

  end
end
