class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @page_title = "Articles"
  end

  def show
    @article = Article.find(params[:id])
    @page_title = @article.title
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def new
    if current_user
      @article = Article.new
    else
      redirect_to '/login'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

    def article_params
      params.require(:article).permit(:title, :body)
    end
end
