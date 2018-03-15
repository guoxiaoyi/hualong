class Jp::WelcomeController < ApplicationController
  # before_action :right_page, :content_submit
  def index
  	@banner = true
    # news_hash = {title_length: 22, style: 'panel-info', head_prefix: '', with_time: true}
    # @bbs = PannelList.new(:bbs, news_hash)
    @content_us = WizcmsArticle::Page.get(:jp_contact_us)
    @history = WizcmsArticle::Page.get(:jp_history)
    @products = ProductCategory.find_by(cid: 2).products
    @news = WizcmsArticle::ArticleCategory.get( "jp_news" ).articles
    @notice = WizcmsArticle::ArticleCategory.get( "jp_notice" ).articles

  end
end
