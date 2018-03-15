class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper WizcmsArticle::ArticlesHelper
  helper WizcmsLink::ApplicationHelper
  before_action :content_submit
  def content_submit
    @content = Content.new
  end
end
