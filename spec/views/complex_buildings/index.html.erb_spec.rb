require 'rails_helper'

RSpec.describe "complex_buildings/index", type: :view do
  # before(:each) do
  #   assign(:complex_buildings, [
  #     ComplexBuilding.create!(
  #       owner: "Owner",
  #       address: "Address",
  #       units: 2,
  #       sqmt: 3,
  #       price: "Price",
  #       manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
  #     ),
  #     ComplexBuilding.create!(
  #       owner: "Owner",
  #       address: "Address",
  #       units: 2,
  #       sqmt: 3,
  #       price: "Price",
  #       manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
  #     )
  #   ])
  # end

  # it "renders a list of complex_buildings" do
  #   render
  #   assert_select "tr>td", text: "Owner".to_s, count: 2
  #   assert_select "tr>td", text: "Address".to_s, count: 2
  #   assert_select "tr>td", text: 2.to_s, count: 2
  #   assert_select "tr>td", text: 3.to_s, count: 2
  #   assert_select "tr>td", text: "Price".to_s, count: 2
  # end
end
