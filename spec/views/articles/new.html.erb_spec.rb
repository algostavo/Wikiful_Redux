require 'spec_helper'

describe "articles/new.html.erb" do
  let(:article) do
    mock_model("Article").as_new_record.as_null_object
  end
  
  before do
    assign(:article, article)
  end
  
  it "renders a form to create a article" do
    render
    rendered.should have_selector("form",
      :method => "post", 
      :action => articles_path
    ) do |form|
      form.should have_selector("input", :type => "submit" )
    end
  end
  
  it "renders a text field for the article title" do
    article.stub(:title => "the title")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input", 
      :type => "text", 
      :name => "article[title]",
      :value => "the title"
      )
    end
  end
  
  it "renders a text area for the article text" do
    article.stub(:text => "the article")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("textarea",
      :name => "message[text]",
      :content => "the article" 
      )
    end
  end
  
end
