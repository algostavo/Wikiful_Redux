require 'spec_helper'
require 'rspec/active_model/mocks'

describe ArticlesController do
  describe "POST create" do
   let(:article) { mock_model(Article).as_null_object }
    
    before do
      Article.stub(:new).and_return(article)
    end
    
    it "creates a new article" do
      Article.should_receive(:new).with("text" => "something new to write").and_return(article)
      post :create, :article => { "text" => "something new to write" }
    end
    
    
    it "saves the article" do
      article.should_receive(:save)
      post :create
    end
    
  context " when the message saves successfully" do  
    it "sets a flash[:notice] message" do
      post :create
      flash[:notice].should eq("The article was saved successfully." )
    end
    
    
    it "redirects to the Articles index" do
      post :create
      response.should redirect_to(:action => "index")
      end
    end
  end
end
