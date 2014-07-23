require 'spec_helper'

describe "written_statements/index" do
  before(:each) do
    assign(:written_statements, [
      stub_model(WrittenStatement,
        :statements => "Statements",
        :body => "MyText",
        :path => "Path",
        :references => ""
      ),
      stub_model(WrittenStatement,
        :statements => "Statements",
        :body => "MyText",
        :path => "Path",
        :references => ""
      )
    ])
  end

  it "renders a list of written_statements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Statements".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
