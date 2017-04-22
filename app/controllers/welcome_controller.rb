class WelcomeController < ApplicationController
  before_action :right_page
  def index
  	@banner = true
    news_hash = {title_length: 22, style: 'panel-info', head_prefix: '', with_time: true}
    @bbs = PannelList.new(:bbs, news_hash)
    @study = PannelList.new(:study, news_hash)
    @news = PannelList.new(:news, news_hash)
    @work = PannelList.new(:work, news_hash)
  end
end
