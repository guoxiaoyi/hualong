class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def right_page
    @learning =WizcmsArticle::Page.get(:learning)
    @enterprise =WizcmsArticle::Page.get(:enterprise)
    @see = PannelList.new(:see)
  end
end
