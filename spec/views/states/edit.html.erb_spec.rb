require 'spec_helper'

describe "states/edit" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :state => "MyString",
      :district => 1
    ))
  end

  it "renders the edit state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", state_path(@state), "post" do
      assert_select "input#state_state[name=?]", "state[state]"
      assert_select "input#state_district[name=?]", "state[district]"
    end
  end
end
