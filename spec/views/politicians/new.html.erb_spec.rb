require 'spec_helper'

describe "politicians/new" do
  before(:each) do
    assign(:politician, stub_model(Politician,
      :name => "MyString",
      :image => "MyString",
      :position1 => "MyString",
      :position2 => "MyString",
      :state => "MyString",
      :district => "MyString",
      :party => "MyString",
      :sworn_in => 1,
      :person_defeated => "MyString",
      :votes_w_party => 1.5,
      :votes_vs_party => 1.5,
      :abstains => 1.5
    ).as_new_record)
  end

  it "renders new politician form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", politicians_path, "post" do
      assert_select "input#politician_name[name=?]", "politician[name]"
      assert_select "input#politician_image[name=?]", "politician[image]"
      assert_select "input#politician_position1[name=?]", "politician[position1]"
      assert_select "input#politician_position2[name=?]", "politician[position2]"
      assert_select "input#politician_state[name=?]", "politician[state]"
      assert_select "input#politician_district[name=?]", "politician[district]"
      assert_select "input#politician_party[name=?]", "politician[party]"
      assert_select "input#politician_sworn_in[name=?]", "politician[sworn_in]"
      assert_select "input#politician_person_defeated[name=?]", "politician[person_defeated]"
      assert_select "input#politician_votes_w_party[name=?]", "politician[votes_w_party]"
      assert_select "input#politician_votes_vs_party[name=?]", "politician[votes_vs_party]"
      assert_select "input#politician_abstains[name=?]", "politician[abstains]"
    end
  end
end
