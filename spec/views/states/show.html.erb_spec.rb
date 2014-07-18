require 'spec_helper'

describe "states/show" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :state => "State",
      :district => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    rendered.should match(/1/)
  end
end
