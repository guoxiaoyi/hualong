class WelcomeController < ApplicationController
  def index
    news_hash = {title_length: 22, style: 'panel-info', head_prefix: '', with_time: true}
    @bbs = PannelList.new(:bbs, news_hash)
    @study = PannelList.new(:study, news_hash)
    @news = PannelList.new(:news, news_hash)
    @see = PannelList.new(:see, news_hash)
  end
end
