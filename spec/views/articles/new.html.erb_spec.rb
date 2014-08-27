require 'spec_helper'

describe "articles/new.html.erb" do
  it "renders a form to create a article" do
    assign(:article, 
    double("Article").as_new_record.as_null_object
    )
    render
    rendered.should have_selector('form',
    :method => "post", 
    :action => articles_path
    ) do |form|
      form.should have_selector("input", :type => 'submit',)
    end
  end
end
