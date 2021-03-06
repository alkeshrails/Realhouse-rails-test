require 'rails_helper'

RSpec.describe "commecials/show", type: :view do
  before(:each) do
    @commecial = assign(:commecial, Commecial.create!(
      owner: "Owner",
      address: "Address",
      shops: 2,
      units: 3,
      sqmt: 4,
      parking: 5,
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
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Price/)
  end
end
