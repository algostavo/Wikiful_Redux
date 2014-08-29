require 'spec_helper'


describe ArticlesController do
  describe "POST create" do
   let(:article) do
      mock_model Article.as_null_object
    end
    
    before do
      Article.stub(:new).and_return(article)
    end
    
    it "creates a new article" do
      Article.should_receive(:new).
      with("text" => "something new to write").
      and_return(article)
      post :create, :article => { "text" => "something new to write" }
    end

    context " when the article saves successfully" do  
      before do
        article.stub(:save).and_return(true)
      end
      
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
