require 'spec_helper'

describe "articles/show.html.erb" do
  
#  it "displays title attribute of the article " do
#    assign(:article, double("Article", :title => "Hello to the title of Articles!"))
#    render
#    rendered.should contain("Hello to the title of Articles!")
#  end
    
  it "displays text attribute of the article" do
    assign(:article, double("Article", :text => "Hello to the text of Articles!"))
    render
    rendered.should match("Hello to the text of Articles!")
  end
end
