class CategoriesController < ApplicationController
  
  def create
    Category.new(params[:category])
    redirect_to :action => "index"
  end
  
end
