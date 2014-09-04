require 'spec_helper'

describe "articles/show.html.erb" do
  
 it "displays title attribute of the article " do
    assign(:article, mock_model("Article", :title => "Hello to Articles!"))
    render
    rendered.should match("Hello to Articles!")
  end
    
  it "displays text attribute of the article" do
    assign(:article, mock_model("Article", :text => "Hello to Articles!"))
    render
    rendered.should match("Hello to Articles!")
  end
end
