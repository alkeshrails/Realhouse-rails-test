require 'rails_helper'

RSpec.describe "commecials/edit", type: :view do
  before(:each) do
    @commecial = assign(:commecial, Commecial.create!(
      owner: "MyString",
      address: "MyString",
      shops: 1,
      units: 1,
      sqmt: 1,
      parking: 1,
      price: "MyString",
      float: "MyString"
    ))
  end

  it "renders the edit commecial form" do
    render

    assert_select "form[action=?][method=?]", commecial_path(@commecial), "post" do

      assert_select "input[name=?]", "commecial[owner]"

      assert_select "input[name=?]", "commecial[address]"

      assert_select "input[name=?]", "commecial[shops]"

      assert_select "input[name=?]", "commecial[units]"

      assert_select "input[name=?]", "commecial[sqmt]"

      assert_select "input[name=?]", "commecial[parking]"

      assert_select "input[name=?]", "commecial[price]"

      assert_select "input[name=?]", "commecial[float]"
    end
  end
end
