class CategoriesController < ApplicationController
  
  def new
  
  end
  
  
  def create
    Category.new(params[:category])
    redirect_to :action => "index"
  end
  
end
