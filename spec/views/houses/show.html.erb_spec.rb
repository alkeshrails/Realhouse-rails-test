require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      owner: "Owner",
      address: "Address",
      rooms: 2,
      sqmt: 3,
      floors: 4,
      air_cond: false,
      price: "Price",
      manager: Manager.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Price/)
  end
end
