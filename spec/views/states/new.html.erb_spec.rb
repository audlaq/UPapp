require 'spec_helper'

describe "states/new" do
  before(:each) do
    assign(:state, stub_model(State,
      :state => "MyString",
      :district => 1
    ).as_new_record)
  end

  it "renders new state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", states_path, "post" do
      assert_select "input#state_state[name=?]", "state[state]"
      assert_select "input#state_district[name=?]", "state[district]"
    end
  end
end
