require 'spec_helper'

describe CategoriesController do
  describe "POST create" do
    it "creates a new category title" do
      Category.should_receive(:new).with("text" => "cars")
      post :create, :category => { "text" => "cars"}
    end
  
    it "redirects to index" do
      post :create
      response.should redirect_to(:action => "index")
    end
  end
end
