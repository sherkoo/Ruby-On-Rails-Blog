class PagesController < ApplicationController

  def home
    @articles = Article.all
  end

  def about
    @page_title = "About"
    @pageDescription = "this is the about page description"
  end

end
