require 'spec_helper'

describe "written_statements/edit" do
  before(:each) do
    @written_statement = assign(:written_statement, stub_model(WrittenStatement,
      :statements => "MyString",
      :body => "MyText",
      :path => "MyString",
      :references => ""
    ))
  end

  it "renders the edit written_statement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", written_statement_path(@written_statement), "post" do
      assert_select "input#written_statement_statements[name=?]", "written_statement[statements]"
      assert_select "textarea#written_statement_body[name=?]", "written_statement[body]"
      assert_select "input#written_statement_path[name=?]", "written_statement[path]"
      assert_select "input#written_statement_references[name=?]", "written_statement[references]"
    end
  end
end
