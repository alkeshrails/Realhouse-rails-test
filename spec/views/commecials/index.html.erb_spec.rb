require 'rails_helper'

RSpec.describe "commecials/index", type: :view do
  # before(:each) do
  #   assign(:commecials, [
  #     Commecial.create!(
  #       owner: "Owner",
  #       address: "Address",
  #       shops: 2,
  #       units: 3,
  #       sqmt: 4,
  #       parking: 5,
  #       price: "Price",
  #       manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
  #     ),
  #     Commecial.create!(
  #       owner: "Owner",
  #       address: "Address",
  #       shops: 2,
  #       units: 3,
  #       sqmt: 4,
  #       parking: 5,
  #       price: "Price",
  #       manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
  #     )
  #   ])
  # end

  # it "renders a list of commecials" do
  #   render
  #   assert_select "tr>td", text: "Owner".to_s, count: 2
  #   assert_select "tr>td", text: "Address".to_s, count: 2
  #   assert_select "tr>td", text: 2.to_s, count: 2
  #   assert_select "tr>td", text: 3.to_s, count: 2
  #   assert_select "tr>td", text: 4.to_s, count: 2
  #   assert_select "tr>td", text: 5.to_s, count: 2
  #   assert_select "tr>td", text: "Price".to_s, count: 2
  # end
end
