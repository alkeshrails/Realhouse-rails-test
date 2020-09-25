require 'rails_helper'

RSpec.describe Manager, type: :model do
  it "has many associations with houses" do
    Manager.reflect_on_association(:houses).macro.should  eq(:has_many)
  end

  it "has many associations with commecials" do
    Manager.reflect_on_association(:commecials).macro.should  eq(:has_many)
  end

  it "has many associations with complex_buildings" do
    Manager.reflect_on_association(:complex_buildings).macro.should  eq(:has_many)
  end
end
