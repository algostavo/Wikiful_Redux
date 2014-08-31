class ArticlesController < ApplicationController
#before_filter :authorize, only: [:new]

  def new
    @article = Article.new
  end
  
  
  def index
   # @articles = Article.all
  end
  
  
  def create
    @article = Article.new(params[:article])
      if @article.save
          flash[:notice] = "The article was saved successfully."
          redirect_to :action => "index"
      else
          render :action => "new"
        end
      end
      
  end
  
