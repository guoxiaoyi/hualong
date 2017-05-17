class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :content_submit
  def right_page
    @learning =WizcmsArticle::Page.get(:learning).content
    @enterprise =WizcmsArticle::Page.get(:enterprise).content
    @see = PannelList.new(:see)
  end
  private
    def content_submit
      @content = Content.new
    end
end
