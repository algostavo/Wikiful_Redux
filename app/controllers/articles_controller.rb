class ArticlesController < ApplicationController
#before_filter :authorize, only: [:new]


  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
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
      
  
  #private    
  #def article_params
    #params.require(:article).permit(:title, :text)    
    #end
  
end
  
