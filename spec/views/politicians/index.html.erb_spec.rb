require 'spec_helper'

describe "politicians/index" do
  before(:each) do
    assign(:politicians, [
      stub_model(Politician,
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
      ),
      stub_model(Politician,
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
      )
    ])
  end

  it "renders a list of politicians" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Position1".to_s, :count => 2
    assert_select "tr>td", :text => "Position2".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
    assert_select "tr>td", :text => "Party".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Person Defeated".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
