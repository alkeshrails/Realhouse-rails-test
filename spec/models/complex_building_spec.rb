require 'rails_helper'

RSpec.describe ComplexBuilding, type: :model do
  it "belongs to with manager" do
    ComplexBuilding.reflect_on_association(:manager).macro.should  eq(:belongs_to)
  end
end
