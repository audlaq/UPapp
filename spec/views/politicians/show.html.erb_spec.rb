require 'spec_helper'

describe "politicians/show" do
  before(:each) do
    @politician = assign(:politician, stub_model(Politician,
      :name => "Name",
      :image => "Image",
      :position1 => "Position1",
      :position2 => "Position2",
      :state => "State",
      :district => "District",
      :party => "Party",
      :sworn_in => 1,
      :person_defeated => "Person Defeated",
      :votes_w_party => 1.5,
      :votes_vs_party => 1.5,
      :abstains => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Image/)
    rendered.should match(/Position1/)
    rendered.should match(/Position2/)
    rendered.should match(/State/)
    rendered.should match(/District/)
    rendered.should match(/Party/)
    rendered.should match(/1/)
    rendered.should match(/Person Defeated/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
