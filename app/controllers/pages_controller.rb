class PagesController < ApplicationController

  def home
    @articles = Article.all
  end

  def about
    @page_title = "About"
  end

end
