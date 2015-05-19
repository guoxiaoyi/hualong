class PagesController < ApplicationController
  def show
    @page = WizcmsArticle::Page.get( params[:id] )
  end
end