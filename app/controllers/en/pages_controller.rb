class En::PagesController < ApplicationController
  before_action :right_page
  def show
    @page = WizcmsArticle::Page.get( params[:id] )
    @content = Content.new
  end
end