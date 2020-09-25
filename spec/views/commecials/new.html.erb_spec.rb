require 'rails_helper'

RSpec.describe "commecials/new", type: :view do
  before(:each) do
    assign(:commecial, Commecial.new(
      owner: "MyString",
      address: "MyString",
      shops: 1,
      units: 1,
      sqmt: 1,
      parking: 1,
      price: "MyString",
      manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
    ))
  end

  it "renders new commecial form" do
    render

    assert_select "form[action=?][method=?]", commecials_path, "post" do

      assert_select "input[name=?]", "commecial[owner]"

      assert_select "input[name=?]", "commecial[address]"

      assert_select "input[name=?]", "commecial[shops]"

      assert_select "input[name=?]", "commecial[units]"

      assert_select "input[name=?]", "commecial[sqmt]"

      assert_select "input[name=?]", "commecial[parking]"

      assert_select "input[name=?]", "commecial[price]"

    end
  end
end
