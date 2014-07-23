require 'spec_helper'

describe "written_statements/show" do
  before(:each) do
    @written_statement = assign(:written_statement, stub_model(WrittenStatement,
      :statements => "Statements",
      :body => "MyText",
      :path => "Path",
      :references => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Statements/)
    rendered.should match(/MyText/)
    rendered.should match(/Path/)
    rendered.should match(//)
  end
end
